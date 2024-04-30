import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:home_ease/core/helpers/constants.dart';
import 'package:home_ease/core/models/users/user_model.dart';
import 'package:home_ease/core/networking/local/cache_helper.dart';
import 'package:home_ease/core/networking/remote/auth_services.dart';
import 'package:home_ease/core/networking/remote/firestore_services.dart';
import 'package:home_ease/features/auth/login/logic/login_state.dart';
import 'package:home_ease/features/auth/login/repo/login_repo.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';




class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(const LoginState.initial());

  final AuthFirebase authSocial = AuthFirebase();
  final service = FirestoreServices.instance;
  final formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginRepo loginRepo;

  Future<void> emitLoginAuthStates() async {
    emit(const LoginState.loading());
    final response = await loginRepo.loginWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
    );
    response.when(success: (value) {
      CacheHelper.saveData(key: 'uId', value: value!.user!.uid.toString());
      CacheHelper.saveData(
          key: 'fullName', value: value.user!.displayName.toString());
      emit(LoginState.loginSuccess(value));
    }, failure: (error) {
      emit(LoginState.error(error: error.toString()));
    });
  }

  Future<void> emitSignInWithFacebookAuthStates() async {
    emit(const LoginState.loading());

    final LoginResult result = await FacebookAuth.instance.login();

    if (result.status == LoginStatus.success) {
      authSocial.signInWithFacebook().then((value) {
        service.setData(
          path: 'users/${value.user!.uid.toString()}',
          data: UserModel(
            fullName: value.user!.displayName.toString(),
            email: value.user!.email.toString(),
            profilePhotoURL: value.user!.photoURL.toString() ?? profilePhotoURL,
            type: 'user',
            uId: value.user!.uid.toString(),
            phone: value.user!.phoneNumber.toString(),
            cover: cover,
          ).toJson(),
        );
        CacheHelper.saveData(key: 'uId', value: value.user!.uid.toString());
        CacheHelper.saveData(
            key: 'fullName', value: value.user!.displayName.toString());

        emit(LoginState.loginSuccess(value));
        // ignore: argument_type_not_assignable_to_error_handler
      }).catchError((error) {
        emit(LoginState.error(error: error.toString()));
      });
    } else {
      emit(LoginState.error(
          error: 'Failed to log in with Facebook. Please try again.'.tr()));
    }
  }

  Future<void> emitSignInWithGoogleAuthStates() async {
    emit(const LoginState.loading());

    authSocial.signInWithGoogle().then((value) {
      service.setData(
        path: 'users/${value!.user!.uid}',
        data: UserModel(
          fullName: value.user!.displayName.toString(),
          email: value.user!.email.toString(),
          profilePhotoURL: value.user!.photoURL.toString() ?? profilePhotoURL,
          uId: value.user!.uid.toString(),
          phone: value.user!.phoneNumber.toString(),
          cover: cover,
          type: 'user',
        ).toJson(),
      );

      CacheHelper.saveData(key: 'uId', value: value.user!.uid.toString());
      CacheHelper.saveData(
          key: 'fullName', value: value.user!.displayName.toString());

      emit(LoginState.loginSuccess(value));
    }).catchError((error) {
      emit(const LoginState.error(error: "Login failed, try again"));
    });
  }
}
