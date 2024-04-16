import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:home_ease/core/widgets/login_and_register_card_social.dart';
import 'package:home_ease/features/home/ui/home_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:home_ease/features/login/ui/widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80.h,
              ),
              Center(
                child: Text(
                  'Login',
                  style: TextStyles.font28Black700,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 18.h),
                child: SizedBox(
                  width: 321.w,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Please Enter your Phone and password to continue',
                    style: TextStyles.font14Black500,
                  ),
                ),
              ),
              const LoginForm(),
              Align(
                alignment: AlignmentDirectional.centerEnd,
                child: TextButton(
                  onPressed: () {
                    context.pushNamed(Routes.forgetPasswordScreen);
                  },
                  child: Text(
                    'Forget Password ?',
                    style: TextStyles.font16Black600,
                  ),
              ),
              const LoginAndRegisterCardSocial(),
              const DontHaveAccountText(),
            ],
          ),
        ),
      ),
    );
  }
}
