
import 'package:get_it/get_it.dart';
import 'package:home_ease/core/networking/remote/auth_services.dart';
import 'package:home_ease/core/networking/remote/firestore_services.dart';
import 'package:home_ease/features/auth/login/logic/login_cubit.dart';
import 'package:home_ease/features/auth/login/repo/login_repo.dart';
import 'package:home_ease/features/auth/register/data/repos/register_repo.dart';
import 'package:home_ease/features/auth/register/logic/register_cubit.dart';
import 'package:home_ease/features/auth/forgetpassword/data/forget_Password_repo.dart';
import 'package:home_ease/features/auth/forgetpassword/logic/resetpassword_cubit.dart';
import 'package:home_ease/features/profile/logic/profile_cubit.dart';

final getIt = GetIt.instance;

Future <void> setupGetIt() async{
  // Dio & ApiService




  getIt.registerLazySingleton<FirestoreServices>(() => FirestoreServices());


    getIt.registerLazySingleton<AuthFirebase>(() => AuthFirebase());


  //Register
    getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt()));
    getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));

 //login
    getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
    getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));


    getIt.registerLazySingleton<ForGetPasswordRepo>(() => ForGetPasswordRepo(getIt()));
    getIt.registerFactory<ResetpasswordCubit>(() => ResetpasswordCubit(getIt()));


    // getIt.registerFactory<ProfileCubit>(() => ProfileCubit(getIt()));



    

}