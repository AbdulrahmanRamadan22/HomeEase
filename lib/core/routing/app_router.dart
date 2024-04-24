import 'package:flutter/material.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/features/Profile/ui/Profile_screen.dart';
import 'package:home_ease/features/add_address/ui/add_address_screen.dart';
import 'package:home_ease/features/categorie/ui/categories_scraan.dart';
import 'package:home_ease/features/forgetpassword/ui/forget_password_screen.dart';
import 'package:home_ease/features/home_layout/logic/home_layout_cubit.dart';
import 'package:home_ease/features/home_layout/ui/home_layout_scraan.dart';
import 'package:home_ease/features/login/ui/login_screen.dart';
import 'package:home_ease/features/notification/ui/notification_screen.dart';
import 'package:home_ease/features/on_boarding/ui/on_boarding_screen.dart';
import 'package:home_ease/features/otp/ui/otp_screen.dart';
import 'package:home_ease/features/payment/ui/payment_screen.dart';
import 'package:home_ease/features/register/logic/register_cubit.dart';
import 'package:home_ease/features/register/ui/register_screen.dart';
import 'package:home_ease/features/resetpassword/ui/reset_password_screen.dart';
import 'package:home_ease/features/address/ui/address_screen.dart';
import 'package:home_ease/features/select_address/ui/select_address_screen.dart';
import 'package:home_ease/features/select_language/ui/select_language_screan.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  RegisterCubit? registerCubit;

  AppRouter() {
    registerCubit = RegisterCubit();
  }

  Route<dynamic> generateRoute(RouteSettings settings) {
    // ignore: non_constant_identifier_names

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (context) => const OnBoardingScreen(),
        );

      case Routes.selectLanguageScreen:
        return MaterialPageRoute(
          builder: (context) => const SelectLanguageScreen(),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        );
      case Routes.registerScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider<RegisterCubit>.value(
            value: registerCubit!,
            child: const RegisterScreen(),
          ),
        );
      case Routes.otpScreen:
        final phoneNumber = settings.arguments as String;
        return MaterialPageRoute(
          builder: (context) => BlocProvider<RegisterCubit>.value(
            value: registerCubit!,
            child: OtpScreen(
              phoneNumber: phoneNumber,
            ),
          ),
        );

      case Routes.resetPasswordScreen:
        return MaterialPageRoute(
          builder: (context) => const ResetPasswordScreen(),
        );

      case Routes.notificationScreenScreen:
        return MaterialPageRoute(
          builder: (context) => const NotificationScreen(),
        );
      case Routes.paymentScreenScreen:
        return MaterialPageRoute(
          builder: (context) => const PaymentScreen(),
        );
      case Routes.addressScreenScreen:
        return MaterialPageRoute(
          builder: (context) => const AddressScreen(),
        );
      case Routes.selectaddressScreen:
        return MaterialPageRoute(
          builder: (context) => const SelectAddress(),
        );
      case Routes.addaddressScreen:
        return MaterialPageRoute(
          builder: (context) => const AddAddressScrean(),
        );
      // case Routes.hourlycleanScreen:
      //   return MaterialPageRoute(
      //     builder: (context) => const HourlyCleanScreen(),
      //   );
      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(
          builder: (context) => const ForgetPasswordScreen(),
        );
      case Routes.profileScreenScreen:
        return MaterialPageRoute(
          builder: (context) => const ProfileScreen(),
        );
      case Routes.categoriesScreen:
        return MaterialPageRoute(
          builder: (context) => const CategoriesScreen(),
        );
      case Routes.homeLayout:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => HomeLayoutCubit(),
            child: const HomeLayoutScreen(),
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
