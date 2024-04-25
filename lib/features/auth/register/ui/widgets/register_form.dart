import 'package:flutter/material.dart';
import 'package:home_ease/core/helpers/app_regex.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_ease/core/widgets/phone_text_form_field.dart';
import 'package:home_ease/features/auth/register/logic/register_cubit.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool isPasswordObscureText = true;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<RegisterCubit>();
    return Form(
      key: cubit.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Full Name',
            style: TextStyles.font16Black600,
          ),
          AppTextFormField(
            suffixIcon: Icon(
              Icons.person_2_outlined,
              color: ColorsApp.gray,
            ),
            hintText: 'Enter your Full Name',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid Full Name';
              } else if (value.length <= 3) {
                return 'fullName must be at least 4 characters';
              }
            },
            controller: cubit.fullNameController,
          ),
          SizedBox(
            height: 18.h,
          ),
          Text(
            'Phone',
            style: TextStyles.font16Black600,
          ),
          PhoneTextFormField(
            controller: cubit.phoneController,
            onChanged: (phone) {
              cubit.countryCode = phone.countryCode;
            },
          ),
          Text(
            'Email',
            style: TextStyles.font16Black600,
          ),
          AppTextFormField(
            controller: cubit.emailController,
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
            height: 18.h,
          ),
          Text(
            'Password',
            style: TextStyles.font16Black600,
          ),
          AppTextFormField(
            keyboardType: TextInputType.visiblePassword,
            isObscureText: isPasswordObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordObscureText = !isPasswordObscureText;
                });
              },
              child: Icon(
                isPasswordObscureText ? Icons.visibility_off : Icons.visibility,
                color: ColorsApp.gray,
              ),
            ),
            hintText: 'Enter Your Password',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid Password';
              } else if (!AppRegex.hasMinLength(value)) {
                return 'Password must be at least 8 characters';
              }
            },
            controller: cubit.passwordController,
          ),
          SizedBox(
            height: 48.h,
          ),
        ],
      ),
    );
  }
}
