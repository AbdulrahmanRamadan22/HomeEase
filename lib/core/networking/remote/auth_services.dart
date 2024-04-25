
// ignore_for_file: depend_on_referenced_packages

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:home_ease/core/networking/remote/firestore_services.dart';


abstract class AuthFirebaseServices {
  User? get currentUser;

  Stream<User?> authStateChanges();

  Future<UserCredential?> loginWithEmailAndPassword(String email, String password);

  Future<UserCredential?> registerWithEmailAndPassword(String email, String password);

  Future<UserCredential?> signInWithGoogle();

  Future<UserCredential?> signInWithFacebook();

  Future<void> logout();
}

class AuthFirebase implements AuthFirebaseServices {
  final _firebaseAuth = FirebaseAuth.instance;
  final _googleSignIn = GoogleSignIn();

  final _authService = FirebaseAuth.instance;


@override
  Future<UserCredential?> signInWithGoogle() async {
  try {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser == null) {
      throw FirebaseAuthException(
        code: 'ERROR_ABORTED_BY_USER',
        message: 'Sign in aborted by user',
      );
    }

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);

    return userCredential;
  } on FirebaseAuthException catch (e) {
    // Handle FirebaseAuthException
    log('FirebaseAuthException: ${e.code} - ${e.message}');
    return null; // Return null or throw an exception based on your requirements
  } on PlatformException catch (e) {
    // Handle PlatformException
    log('PlatformException: ${e.code} - ${e.message}');
    return null; // Return null or throw an exception based on your requirements
  } catch (e) {
    // Handle other exceptions
    log('Error signing in with Google: $e');
    return null; // Return null or throw an exception based on your requirements
  }
}
  @override
  Future<UserCredential> signInWithFacebook() async {
    final LoginResult result = await FacebookAuth.instance.login();
    

    if (result.status == LoginStatus.success) {
      final AccessToken accessToken = result.accessToken!;
      final facebookAuthCredential =
          FacebookAuthProvider.credential(accessToken.token);

      return await _firebaseAuth.signInWithCredential(facebookAuthCredential);
    } else {

      throw FirebaseAuthException(
        code: 'ERROR_FACEBOOK_LOGIN_FAILED',
        message: 'Failed to log in with Facebook. Please try again.',
      );
    }
  }

  @override
  Stream<User?> authStateChanges() => _firebaseAuth.authStateChanges();

  @override
  User? get currentUser => _firebaseAuth.currentUser;

  @override
  Future<void> logout() async {
    await _firebaseAuth.signOut();
    await _googleSignIn.signOut();
    await FacebookAuth.instance.logOut();
    await _authService.signOut();

  }

  @override
  Future<UserCredential?> loginWithEmailAndPassword(String email, String password) async {
    final userAuth = await  _authService.signInWithEmailAndPassword(
        email: email, password: password);
    return userAuth;
  }

  @override
  Future<UserCredential?> registerWithEmailAndPassword(
      String email, String password) async {
    final userAuth = await _authService.createUserWithEmailAndPassword(
        email: email, password: password);
    return userAuth;
  }
}




//AccessToken accessToken = AccessToken.getCurrentAccessToken();
// boolean isLoggedIn = accessToken != null && !accessToken.isExpired();