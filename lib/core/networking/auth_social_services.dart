// ignore: depend_on_referenced_packages
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

abstract class AuthSocialServices {
  User? get currentUser;

  Stream<User?> authStateChanges();

  // Future<User?> loginWithEmailAndPassword(String email, String password);

  // Future<User?> signUpWithEmailAndPassword(String email, String password);

  Future<UserCredential?> signInWithGoogle();

  Future<UserCredential?> signInWithFacebook();

  Future<void> logout();
}

class AuthSocial implements AuthSocialServices {
  final _firebaseAuth = FirebaseAuth.instance;
  final _googleSignIn = GoogleSignIn();

  // @override
  // Future<User?> loginWithEmailAndPassword(String email, String password) async {
  //   final userAuth = await _firebaseAuth.signInWithEmailAndPassword(
  //       email: email, password: password);
  //   return userAuth.user;
  // }

  @override
  // Future<User?> signUpWithEmailAndPassword(
  //     String email, String password) async {
  //   final userAuth = await _firebaseAuth.createUserWithEmailAndPassword(
  //       email: email, password: password);
  //   return userAuth.user;
  // }

  @override
  Future<UserCredential?> signInWithGoogle() async {
    final googleUser = await _googleSignIn.signIn();
    if (googleUser != null) {
      final googleAuth = await googleUser.authentication;
      if (googleAuth.idToken != null) {
        final userCredential = await _firebaseAuth.signInWithCredential(
          GoogleAuthProvider.credential(
            idToken: googleAuth.idToken,
            accessToken: googleAuth.accessToken,
          ),
        );
        return userCredential;
      }
    }
    return null;
  }

  @override
  Future<UserCredential?> signInWithFacebook() async {
    final LoginResult result = await FacebookAuth.instance.login();
    if (result.status == LoginStatus.success) {
      final accessToken = result.accessToken!.token;
      final userCredential = await _firebaseAuth.signInWithCredential(
        FacebookAuthProvider.credential(accessToken),
      );
      return userCredential;
    }
    return null;
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
  }
}