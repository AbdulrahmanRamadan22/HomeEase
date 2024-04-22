// ignore: depend_on_referenced_packages

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

  // final _service = FirestoreServices.instance;

  @override
  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    final userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);

    return userCredential;

  }

  Future<UserCredential> signInWithFacebook2() async {
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
  Future<UserCredential?> signInWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    // Create a credential from the access token
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);

    final userCredential = await FirebaseAuth.instance
        .signInWithCredential(facebookAuthCredential);

    // Once signed in, return the UserCredential
    return userCredential;
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

  // @override
  // Future<User?> loginWithEmailAndPassword(String email, String password) async {
  //   final userAuth = await _firebaseAuth.signInWithEmailAndPassword(
  //       email: email, password: password);
  //   return userAuth.user;
  // }

  // @override
  // Future<User?> signUpWithEmailAndPassword(
  //     String email, String password) async {
  //   final userAuth = await _firebaseAuth.createUserWithEmailAndPassword(
  //       email: email, password: password);
  //   return userAuth.user;
  // }



}




//AccessToken accessToken = AccessToken.getCurrentAccessToken();
// boolean isLoggedIn = accessToken != null && !accessToken.isExpired();