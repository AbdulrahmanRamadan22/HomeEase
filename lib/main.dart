import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:home_ease/core/helpers/my_bloc_observer.dart';
import 'package:home_ease/home_ease__app.dart';
// ignore: depend_on_referenced_packages
import 'package:easy_localization/easy_localization.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:bloc/bloc.dart';




// import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() async {
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  WidgetsFlutterBinding.ensureInitialized();
    Bloc.observer = MyBlocObserver();

  
await Firebase.initializeApp(

      options: DefaultFirebaseOptions.currentPlatform,

    // options: const FirebaseOptions(
    //   apiKey: "AIzaSyBbkJ9vmbaQHDFBdXUJdCrnS8qIm3yxSt0",
    //   appId: "1:962821068285:android:6b9c368869bc6cb2503594",
    //   messagingSenderId: "962821068285",
    //   projectId: "home-ease-distribute",
    // ),
  );
 



  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,

    statusBarIconBrightness:
        Brightness.dark, //<-- For Android SEE HERE (dark icons)
  ));

  await EasyLocalization.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('ar')],
        path:
            'assets/translations', // <-- change the path of the translation files
        fallbackLocale: const Locale('ar', 'EG'),
        // assetLoader: const CodegenLoader(),
        // saveLocale: true,
        child: const HomeEase()),
  );
}
