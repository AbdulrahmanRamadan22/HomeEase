import 'package:flutter/material.dart';
import 'package:home_ease/core/helpers/app_regex.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_ease/features/forgetpassword/logic/resetpassword_cubit.dart';
import 'package:home_ease/features/forgetpassword/ui/widgets/for_get_password_bloc_listener.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Form(
          key: context.read<ResetpasswordCubit>().formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Forget Password",
                  style: TextStyles.font28Black700,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 24.h),
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 340.w,
                    child: Text(
                      'Don\'t worry sometimes people can forget too, enter your email and we will send you a password reset link.',
                      textAlign: TextAlign.center,
                      style: TextStyles.font14Black500,
                    ),
                  ),
                ),
              ),
              Text(
                'Email',
                style: TextStyles.font16Black600,
              ),
              AppTextFormField(
                controller: context.read<ResetpasswordCubit>().emailController,
                keyboardType: TextInputType.emailAddress,
                suffixIcon: Icon(
                  Icons.email_outlined,
                  color: ColorsApp.gray,
                ),
                hintText: 'Enter your Email',
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      !AppRegex.isEmailValid(value)) {
                    return 'Please enter a valid email';
                  }
                },
              ),
              SizedBox(
                height: 48.h,
              ),
              CustomButton(
                onPressed: () {
                  validateThenDoLogin(context);

                  // context.pushNamed(Routes.resetPasswordScreen,);
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const ResetPasswordScreen()),
                  // );
                },
                text: "Submit",
              ),
              const ForgetPasswordBlocListener(),
            ],
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<ResetpasswordCubit>().formKey.currentState!.validate()) {
      context.read<ResetpasswordCubit>().emitResetpasswordStates();
    }
  }
}
