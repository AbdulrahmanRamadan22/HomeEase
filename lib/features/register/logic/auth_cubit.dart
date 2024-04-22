import 'dart:developer';

// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:home_ease/core/models/users/user_request_body.dart';
import 'package:home_ease/core/networking/auth_social_services.dart';
import 'package:home_ease/core/networking/firestore_services.dart';
import 'package:home_ease/features/register/logic/auth_state.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState.initial());

  late String verificationId="";

  final formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  final TextEditingController otpController = TextEditingController();

  // TextEditingController codeSubmittedController = TextEditingController();

  late String countryCode = "";
  late String phoneNumber = countryCode + phoneController.text;
  Duration timeout = const Duration(seconds: 30);
  AuthSocial authSocial = AuthSocial();

  final service = FirestoreServices.instance;

  final FirebaseAuth _auth = FirebaseAuth.instance;

  // final fireStore = FirebaseFirestore.instance;

  // TextEditingController passwordConfirmationController =
  //     TextEditingController();

  Future<void> emitRegisterPhoneAuthStates() async {
    emit(const AuthState.loading());
    await FirebaseAuth.instance.verifyPhoneNumber(
      phoneNumber: phoneNumber,
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
    emit(AuthState.error(error: error.message.toString()));
  }

//Handle when a code has been sent to the device from Firebase, used to prompt users to enter the code.
  void codeSent(String verificationId, int? resendToken) {
    print('codeSent');

    this.verificationId = verificationId;

    print("this.verificationId ${this.verificationId}");
    emit(const AuthState.phoneNumberSubmited());
  }

//Handle a timeout of when automatic SMS code handling fails.
  void codeAutoRetrievalTimeout(String verificationId) {
    print('codeAutoRetrievalTimeout');
  }

  Future<void> submitOTP(String otpCode) async {
    print("submitOTP");

    print("submitOTP aaaaaaaaaaaaaaaaaa$otpCode");
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationId, smsCode: otpCode);

    print("submitOTP aaaaaaaaaaaaaaaaaa$otpCode");

    await login(credential);
  }

  Future<void> login(PhoneAuthCredential credential) async {
    try {
      await FirebaseAuth.instance.signInWithCredential(credential);
      emit(const AuthState.phoneOtpVerified());
    } catch (error) {
      emit(AuthState.error(error: error.toString()));
    }
  }

  Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();
  }

  User getLoggedInUser() {
    User firebaseUser = FirebaseAuth.instance.currentUser!;
    return firebaseUser;
  }

  Future<void> emitSignInWithGoogleAuthStates() async {
    emit(const AuthState.loading());
    authSocial.signInWithGoogle().then((value) {
      service.setData(
        path: 'users/${value.user!.uid}',
        data: UserRequestBody(
          fullName: value.user!.displayName.toString(),
          email: value.user!.email.toString(),
          profilePhotoURL: value.user!.photoURL.toString(),
          type: 'user',
          uId: value.user!.uid.toString(),
          phone: value.user!.phoneNumber.toString(),
        ).toJson(),
      );

      emit(AuthState.createUser(value));
    }).catchError((error) {
      emit(AuthState.error(error: error.toString()));
    });
  }

  Future<void> emitSignInWithFacebookAuthStates() async {
    emit(const AuthState.loading());

    authSocial.signInWithFacebook2().then((value) {
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

      emit(AuthState.createUser(value));
    }).catchError((error) {
      emit(AuthState.error(error: error.toString()));
    });
  }

  Future<void> sendOTPCode(
    String phoneNo,
  ) async {
    await _auth.verifyPhoneNumber(
      timeout: const Duration(seconds: 40),
      phoneNumber: phoneNo,
      verificationCompleted: verificationCompleted1,
      verificationFailed: verificationFailed1,
      codeSent: codeSent1,
      codeAutoRetrievalTimeout: codeAutoRetrievalTimeout1,
    );
  }

  void verificationCompleted1(PhoneAuthCredential credential) async {
    log('verificationCompleted');
    await login(credential);
  }

  void verificationFailed1(FirebaseAuthException error) {
    log('verificationFailed : ${error.message.toString()}');
    emit(AuthState.error(error: error.message.toString()));
  }

  void codeSent1(String verificationId, int? resendToken) {
    log('codeSent');

    this.verificationId = verificationId;

    log("this.verificationId ${this.verificationId}");
    emit(const AuthState.phoneNumberSubmited());
  }

  void codeAutoRetrievalTimeout1(String verificationId) {
    log('codeAutoRetrievalTimeout');
  }

  Future<void> submitOTP1(
    String otpCode,
    String verificationId
  ) async {
    log("submitOTP1");


    verificationId = this.verificationId;

    log("submitOTP1 aaaaaaaaaaaaaaaaaa$otpCode");

    log("verificationId aaaaaaaaaaaaaaaaaa$verificationId,");

    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId:
            "AD8T5ItFn13pxgKPBWj0F1hxoaGbMt3wPp4MKFZx1hMPa_ewl3RD09oPQC_uWJQL1VA3CbMlh42g-evUxfXYA5624sIeUsTo0ks-wWDoMjuGbs1YtY4hTx3ulnLSgzrogevj5BP_5StRO9p0uCPl8cCMb7F7aXqGkgbIQu8ZOgWL7hxa_TqYXDHEVW3DMm19I9IKHogift4j7l-rl5MpOmiHiUo2c54Sc3nnI5yIFlnO5Pab-cEhRD0",
        smsCode: otpCode);

    log("submitOTP aaaaaaaaaaaaaaaaaa$otpCode");

    log("verificationId aaaaaaaaaaaaaaaaaa$verificationId,");

    log("credential ${credential.toString()}");

    await login1(credential);
  }

  Future<void> login1(PhoneAuthCredential credential) async {
    try {
      await FirebaseAuth.instance.signInWithCredential(credential);

      emit(const AuthState.phoneOtpVerified());
    } catch (error) {
      emit(AuthState.error(error: error.toString()));
    }
  }

//  Future<String> verifyOTPCode({
//     required String verifyId,
//     required String otp,
//   }) async {
//     try {
//       PhoneAuthCredential authCredential = PhoneAuthProvider.credential(
//         verificationId: verifyId,
//         smsCode: otp,
//       );
//       final UserCredential userCredential =
//           await _auth.signInWithCredential(authCredential);
//       if (userCredential.user != null) {
//         // await storeNumber(userCredential.user!.phoneNumber!);
//         return 'success';
//       } else {
//         return 'Error in OTP';
//       }
//     } catch (e) {
//       return e.toString();
//     }
//   }
}
