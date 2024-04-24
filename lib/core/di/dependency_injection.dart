
import 'package:get_it/get_it.dart';
import 'package:home_ease/core/networking/remote/auth_services.dart';
import 'package:home_ease/core/networking/remote/firestore_services.dart';
import 'package:home_ease/features/register/data/repos/register_repo.dart';
import 'package:home_ease/features/register/logic/register_cubit.dart';

final getIt = GetIt.instance;

Future <void> setupGetIt() async{
  // Dio & ApiService




  getIt.registerLazySingleton<FirestoreServices>(() => FirestoreServices());


    getIt.registerLazySingleton<AuthFirebase>(() => AuthFirebase());


  //Register
    getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt()));
    getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));

 //signUP
    // getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
    // getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));

}