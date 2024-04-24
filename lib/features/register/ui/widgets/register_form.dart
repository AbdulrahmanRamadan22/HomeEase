import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:home_ease/features/register/logic/register_cubit.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool isPasswordObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RegisterCubit>().formKey,
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
              }
            },
            controller: context.read<RegisterCubit>().fullNameController,
          ),
          SizedBox(
            height: 18.h,
          ),
          Text(
            'Phone',
            style: TextStyles.font16Black600,
          ),
          IntlPhoneField(
            validator: (value) {
              if (value == null || value.completeNumber.isEmpty) {
                return 'Please enter a valid phone number';
              }
              return null;
            },
            controller: context.read<RegisterCubit>().phoneController,
            decoration: InputDecoration(
              isDense: true,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorsApp.mainGreen,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: ColorsApp.lightGray,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.red,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16.0),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.red,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(16.0),
              ),
              hintStyle: TextStyles.font16Gray500,
              hintText: "Enter your phone",
              suffixIcon: Icon(
                Icons.phone_outlined,
                color: ColorsApp.gray,
              ),
              fillColor: ColorsApp.lightGreen,
              filled: true,
            ),
            initialCountryCode: 'EG',
            onChanged: (phone) {

              context.read<RegisterCubit>().countryCode=
                  phone.countryCode;
            },
            onSubmitted: (phone) {
              
            },
          ),
          Text(
            'Email',
            style: TextStyles.font16Black600,
          ),
          AppTextFormField(
            controller: context.read<RegisterCubit>().emailController,
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
              ),
            ),
            hintText: 'Enter Your Password',
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid Password';
              }
            },
            controller: context.read<RegisterCubit>().passwordController,
          ),
          SizedBox(
            height: 48.h,
          ),
        ],
      ),
    );
  }
}
