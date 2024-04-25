import 'package:home_ease/core/networking/remote/auth_services.dart';
import 'package:home_ease/core/networking/remote/firebase_result.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginRepo {
  final AuthFirebase _authFirebase;

  LoginRepo(this._authFirebase);

  Future<FirebaseResult<UserCredential?>> loginWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final response =
          await _authFirebase.loginWithEmailAndPassword(email, password);

      return FirebaseResult.success(response);
    } on FirebaseAuthException catch (error) {
      return FirebaseResult.failure(error.toString());
    } catch (error) {
      return FirebaseResult.failure(error.toString());
    }
  }
}
