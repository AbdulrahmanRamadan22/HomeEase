// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool isPasswordObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Email',
          style: TextStyles.font16Black600,
        ),
        AppTextFormField(
          keyboardType: TextInputType.emailAddress,
          suffixIcon: Icon(
            Icons.email_outlined,
            color: ColorsApp.gray,
          ),
          hintText: 'Enter your Email',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid Email';
            }
          },
          // controller: context.read<AuthPhoneCubit>().fullNameController,
        ),
        SizedBox(
          height: 18.h,
        ),
        Text(
          'Password',
          style: TextStyles.font16Black600,
        ),
        AppTextFormField(
          isObscureText: isPasswordObscureText,
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                isPasswordObscureText = !isPasswordObscureText;
              });
            },
            child: Icon(
              isPasswordObscureText ? Icons.visibility_off : Icons.visibility,
            ),
          ),
          hintText: 'Enter Your Password',
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a valid Password';
            }
          },
          // controller: context.read<AuthCubit>().passwordController,
        ),
        SizedBox(
          height: 16.h,
        ),
      ],
    );
  }
}
