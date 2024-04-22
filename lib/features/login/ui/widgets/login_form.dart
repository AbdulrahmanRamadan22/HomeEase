import 'package:flutter/material.dart';
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
          'Phone',
          style: TextStyles.font16Black600,
        ),
        SizedBox(
          height: 8.h,
        ),
        AppTextFormField(
          suffixIcon: const Icon(
            Icons.phone_outlined,
            color: Color(0xffB5B5B5),
          ),
          hintText: 'Enter your phone',
          validator: (p0) {},
        ),
        SizedBox(
          height: 18.h,
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
            // controller: context.read<AuthCubit>().passwordController,
          ),
        SizedBox(
          height: 16.h,
        ),
      ],
    );
  }
}
