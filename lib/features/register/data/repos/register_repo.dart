import 'package:home_ease/core/networking/remote/auth_services.dart';
import 'package:home_ease/core/networking/remote/firebase_result.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterRepo {
  final AuthFirebase _authFirebase;

  RegisterRepo(this._authFirebase);

  Future<FirebaseResult<UserCredential?>> registerWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final response =
          await _authFirebase.registerWithEmailAndPassword(email, password);

      return FirebaseResult.success(response);
    } catch (error) {
      return FirebaseResult.failure(error.toString());
    }
  }
}
