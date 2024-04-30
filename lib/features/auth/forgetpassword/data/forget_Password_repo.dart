import 'package:home_ease/core/networking/remote/auth_services.dart';
import 'package:home_ease/core/networking/remote/firebase_result.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ForGetPasswordRepo {
  final AuthFirebase _authFirebase;

  ForGetPasswordRepo(this._authFirebase);

  Future<FirebaseResult<void>> resetPassword(
      {required String email,}) async {
    try {
      final response =
          await _authFirebase.resetPassword(email, );
      // ignore: void_checks
      return FirebaseResult.success(response);
    } on FirebaseAuthException catch (error) {
      return FirebaseResult.failure(error.toString());
    } catch (error) {
      return FirebaseResult.failure(error.toString());
    }
  }
}
