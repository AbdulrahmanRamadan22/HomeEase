import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:home_ease/features/otp/ui/widgets/otp_bloc_listener.dart';
import 'package:home_ease/features/register/logic/auth_cubit.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class OtpScreen extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final phoneNumber;

  const OtpScreen({
    super.key,
    // this.timeSend,
    required this.phoneNumber,
  });

  // int? timeSend;
  @override
  Widget build(BuildContext context) {
    defaultPinTheme([Color color = Colors.transparent]) => PinTheme(
          width: 58.w,
          height: 60.h,
          textStyle: const TextStyle(
            fontSize: 30,
          ),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 235, 244, 238),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: color),
          ),
        );
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            children: [
              Text('OTP', style: TextStyles.font28Black700),
              SizedBox(
                height: 18.h,
              ),
              Text('An Authentication code has been sent to',
                  style: TextStyles.font14gray700),
              SizedBox(
                height: 5.h,
              ),
              Text(
                " $phoneNumber",
                style: TextStyles.font14yallow700,
              ),
              SizedBox(
                height: 28.h,
              ),
              Pinput(
                controller: context.read<AuthCubit>().otpController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a valid code';
                  }
                  return null;
                },
                length: 6,
                // onCompleted: (value) {
                //   log(value);

                //   // context.read<AuthCubit>().codeSubmittedController.text =
                //   otpCode = value;

                //   log("OtpCode +++++++++++++   $otpCode");
                //   // log("value: $value");
                //   // log("abod ${context.read<AuthCubit>().codeSubmittedController.text}");
                // },
                autofocus: true,
                showCursor: true,
                keyboardType: TextInputType.number,
                defaultPinTheme: defaultPinTheme(),
                focusedPinTheme: defaultPinTheme(ColorsApp.mainGreen),
                followingPinTheme: defaultPinTheme(ColorsApp.mainGreen),
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                // onSubmitted: (pin) {
                //   otpCode = pin;
                //   log("OtpCode$otpCode");

                //   // context.read<RegisterCubit>().codeSubmittedController.text = pin;
                //   log(pin);
                // }
                onChanged: (value) {
                  context.read<AuthCubit>().otpController.text = value;
                },
              ),
              SizedBox(
                height: 48.h,
              ),
              CustomButton(
                text: 'Submit',
                onPressed: () {
                  log( context.read<AuthCubit>().otpController.text );

                  context.read<AuthCubit>().submitOTP1(context.read<AuthCubit>().otpController.text,context.read<AuthCubit>().verificationId );
                },
              ),
              SizedBox(
                height: 32.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Code Sent. Resend Code in',
                      style: TextStyles.font14Black400),
                  SizedBox(
                    width: 5.w,
                  ),
                  Text(
                    'timeSend 00.50',
                    style: TextStyles.font14yallow500,
                  ),
                ],
              ),
              const OtpBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}
