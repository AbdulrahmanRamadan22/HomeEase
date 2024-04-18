import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/widgets/login_and_register_card_social.dart';
import 'package:home_ease/features/register/logic/register_cubit.dart';
import 'package:home_ease/features/register/ui/widgets/already_have_account_text.dart';
import 'package:home_ease/features/register/ui/widgets/register_bloc_listener.dart';
import 'package:home_ease/features/register/ui/widgets/register_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 80.h,
              ),
              Center(
                child: Text(
                  'Register',
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
              const RegisterForm(),
              CustomButton(
                text: 'Register',
                onPressed: () {
                  // showProgressIndicator(context);

                  validateThenDoSignUp(context);

                  // context.read<RegisterCubit>().emitRegisterPhoneAuthStates();

                  // context.pushNamed(Routes.otpScreen);

                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => OtpScreen()),
                  // );
                },
              ),
              SizedBox(
                height: 15.h,
              ),
              const LoginAndRegisterCardSocial(),
              const AlreadyHaveAccountText(),
              const RegisterBlocListener(),
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoSignUp(BuildContext context) {
    if (context.read<RegisterCubit>().formKey.currentState!.validate()) {
      context.read<RegisterCubit>().emitRegisterPhoneAuthStates();
      // context.read<RegisterCubit>().saveUserInformation();
    }
  }
}
