import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:home_ease/core/helpers/app_regex.dart';
import 'package:home_ease/core/models/users/user_request_body.dart';
import 'package:home_ease/core/networking/local/cache_helper.dart';
import 'package:home_ease/core/networking/remote/auth_services.dart';
import 'package:home_ease/core/networking/remote/firestore_services.dart';
import 'package:home_ease/features/auth/register/data/repos/register_repo.dart';
import 'package:home_ease/features/auth/register/logic/register_state.dart';
import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this.registerRepo) : super(const RegisterState.initial());

  AuthFirebase authSocial = AuthFirebase();

  final service = FirestoreServices.instance;

  final formKey = GlobalKey<FormState>();

  RegisterRepo registerRepo;

  TextEditingController passwordController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  final emailStreamController = StreamController<String>();
  final passwordStreamController = StreamController<String>();
  final fullNameStreamController = StreamController<String>();

  late String countryCode = "";
  late String phoneNumber = countryCode + phoneController.text;

  Future<void> emitRegisterAuthStates() async {
    emit(const RegisterState.registerLoading());
    final response = await registerRepo.registerWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
    response.when(success: (value) {
      service.setData(
        path: 'users/${value!.user!.uid.toString()}',
        data: UserRequestBody(
          fullName: fullNameController.text,
          email: emailController.text,
          profilePhotoURL:
              "https://media.istockphoto.com/id/587805156/vector/profile-picture-vector-illustration.jpg?s=612x612&w=0&k=20&c=gkvLDCgsHH-8HeQe7JsjhlOY6vRBJk_sKW9lyaLgmLo=",
          type: 'user',
          uId: value.user!.uid.toString(),
          phone: phoneNumber,
        ).toJson(),
      );

      CacheHelper.saveData(key: 'uId', value: value.user!.uid.toString());
      emit(RegisterState.registerSuccess(value));
    }, failure: (error) {
      emit(RegisterState.registerError(error: error.toString()));
    });
  }

  Future<void> emitSignInWithFacebookAuthStates() async {
    emit(const RegisterState.registerLoading());

    final LoginResult result = await FacebookAuth.instance.login();

    if (result.status == LoginStatus.success) {
      authSocial.signInWithFacebook().then((value) {
        service.setData(
          path: 'users/${value.user!.uid.toString()}',
          data: UserRequestBody(
            fullName: value.user!.displayName.toString(),
            email: value.user!.email.toString(),
            profilePhotoURL: value.user!.photoURL.toString(),
            type: 'user',
            uId: value.user!.uid.toString(),
            phone: value.user!.phoneNumber.toString(),
          ).toJson(),
        );
        CacheHelper.saveData(key: 'uId', value: value.user!.uid.toString());

        emit(RegisterState.createUser(value));
        // ignore: argument_type_not_assignable_to_error_handler
      }).catchError((error) {
        emit(RegisterState.registerError(error: error.toString()));
      });
    } else {
      emit(const RegisterState.registerError(
          error: 'Failed to log in with Facebook. Please try again.'));
    }
  }

  Future<void> emitSignInWithGoogleAuthStates() async {
    emit(const RegisterState.registerLoading());

    authSocial.signInWithGoogle().then((value) {
      service.setData(
        path: 'users/${value!.user!.uid}',
        data: UserRequestBody(
          fullName: value.user!.displayName.toString(),
          email: value.user!.email.toString(),
          profilePhotoURL: value.user!.photoURL.toString(),
          type: 'user',
          uId: value.user!.uid.toString(),
          phone: value.user!.phoneNumber.toString(),
        ).toJson(),
      );
      CacheHelper.saveData(key: 'uId', value: value.user!.uid.toString());

      emit(RegisterState.createUser(value));
    }).catchError((error) {
      emit(const RegisterState.registerError(error: "Login failed, try again"));
    });
  }
}
