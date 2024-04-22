import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/features/register/logic/auth_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      key: context.read<AuthCubit>().formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Full Name',
            style: TextStyles.font16Black600,
          ),
          SizedBox(
            height: 8.h,
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
            controller: context.read<AuthCubit>().fullNameController,
          ),
          SizedBox(
            height: 18.h,
          ),
          Text(
            'Phone',
            style: TextStyles.font16Black600,
          ),
          SizedBox(
            height: 8.h,
          ),
          // AppTextFormField(
          //   suffixIcon: const Icon(
          //     Icons.phone_outlined,
          //     color: Color(0xffB5B5B5),
          //   ),
          //   hintText: 'Enter your phone',
          //   validator: (value) {
          //     if (value == null || value.isEmpty) {
          //       return 'Please enter a valid phone number';
          //     }
          //   },
          //   controller: context.read<RegisterCubit>().phoneController,
          // ),

          IntlPhoneField(
            validator: (value) {
              if (value == null || value.completeNumber.isEmpty) {
                return 'Please enter a valid phone number';
              }
              return null;
            },
            controller: context.read<AuthCubit>().phoneController,
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
            onSaved: (newValue) {
              print("abooooooooooood");
              print(newValue!.countryCode);
            },
            onChanged: (phone) {
              context.read<AuthCubit>().countryCode = phone.countryCode;
              log(context.read<AuthCubit>().countryCode);

              print(phone.countryCode);
            },
          ),

          Text(
            'Password',
            style: TextStyles.font16Black600,
          ),
          SizedBox(
            height: 8.h,
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
            controller: context.read<AuthCubit>().passwordController,
          ),
          SizedBox(
            height: 48.h,
          ),
        ],
      ),
    );
  }
}
