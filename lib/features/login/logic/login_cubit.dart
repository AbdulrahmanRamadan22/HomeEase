// import 'package:bloc/bloc.dart';
// import 'package:home_ease/features/login/logic/login_state.dart';
//   import 'package:google_sign_in/google_sign_in.dart';
//   import 'package:firebase_auth/firebase_auth.dart';




// class LoginCubit extends Cubit<LoginState> {
//   LoginCubit() : super(const LoginState.initial());



//    final FirebaseAuth _auth = FirebaseAuth.instance;
//   final GoogleSignIn _googleSignIn = GoogleSignIn();

//   Future<User?> signInWithGoogle() async {
//     try {
//       final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
//       final GoogleSignInAuthentication googleAuth =
//           await googleUser!.authentication;
//       final AuthCredential credential = GoogleAuthProvider.credential(
//         accessToken: googleAuth.accessToken,
//         idToken: googleAuth.idToken,
//       );
//       final UserCredential result =
//           await _auth.signInWithCredential(credential);
//       final User? user = result.user;
//       return user;
      

//     } catch (e) {
//       print('Error signing in with Google: $e');
//       return null;
//     }
//   }

//   Future<void> signOut() async {
//     await _auth.signOut();
//     await _googleSignIn.signOut();
//   }


// }
