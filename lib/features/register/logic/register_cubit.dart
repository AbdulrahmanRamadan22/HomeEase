import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:home_ease/features/register/data/models/register_request_body.dart';
import 'package:home_ease/features/register/logic/register_state.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(const RegisterState.initial());

  late String verificationId = '';

  final formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  late String countryCode;

  Duration timeout = const Duration(seconds: 30);

  // final fireStore = FirebaseFirestore.instance;

  // TextEditingController passwordConfirmationController =
  //     TextEditingController();

  Future<void> emitRegisterPhoneAuthStates() async {
    // emit(const PhoneAuthState.loading());
    // ignore: unused_element

    emit(const RegisterState.loading());
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: '+${countryCode + phoneController.text}',
      timeout: timeout,
      verificationCompleted: verificationCompleted,
      verificationFailed: verificationFailed,
      codeSent: codeSent,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout,
    );
    // saveUserInformation();
  }

//Automatic handling of the SMS code on Android devices.
  void verificationCompleted(PhoneAuthCredential credential) async {
    log('verificationCompleted');
    await login(credential);
  }

//  Handle failure events such as invalid phone numbers or whether the SMS quota has been exceeded.
  void verificationFailed(FirebaseAuthException error) {
    log('verificationFailed : ${error.message.toString()}');
    emit(RegisterState.error(error: error.message.toString()));
  }

//Handle when a code has been sent to the device from Firebase, used to prompt users to enter the code.
  void codeSent(String verificationId, int? resendToken) {
    try {
      log('codeSent');
      this.verificationId = verificationId;
      emit(const RegisterState.phoneNumberSubmited());
    } on FirebaseAuthException catch (error) {
      emit(RegisterState.error(error: error.message.toString()));
    }
  }

//Handle a timeout of when automatic SMS code handling fails.
  void codeAutoRetrievalTimeout(String verificationId) {
    log('codeAutoRetrievalTimeout');
  }

  Future<void> submitOTP(String otpCode) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: otpCode);

    await login(credential);
  }

  Future<void> login(PhoneAuthCredential credential) async {
    try {
      await FirebaseAuth.instance.signInWithCredential(credential);
      emit(const RegisterState.phoneOtpVerified());
    } catch (error) {
      emit(RegisterState.error(error: error.toString()));
    }
  }

  Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();
  }

  User getLoggedInUser() {
    User firebaseUser = FirebaseAuth.instance.currentUser!;
    return firebaseUser;
  }

  // Future<void> saveUserInformation() async {
  //   CollectionReference users = FirebaseFirestore.instance.collection('users');
  //   await users
  //       .add(
  //     RegisterRequestBody(
  //       fullName: fullNameController.text,
  //       password: passwordController.text,
  //       type: 'user',
  //       uId: "1",

  //       // uId: FirebaseAuth.instance.currentUser!.uid,
  //       phone: '+20${phoneController.text}',
  //     ).toJson(),
  //   )
  //       .then((value) {
  //     emit(const RegisterState.createUser());
  //   }).catchError((error) {
  //     emit(RegisterState.error(error: error.toString()));
  //   });
  // }
}



  // final  response = RegisterRequestBody(
  //   fullName: fullNameController.text,
  //   password: passwordController.text,
  //   phone: phoneController.text,
  // );

  // response.when(
  //   success: (signUpResponse) {
  //     emit(RegisterState.success(signUpResponse));
  //   },
  //   failure: (error) {
  //     emit(RegisterState.error(error: error.apiErrorModel.message ?? ''));
  //   },
  // );