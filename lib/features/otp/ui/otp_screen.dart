import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class OtpScreen extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final phoneNumber;
  // final String? countryCode;

  OtpScreen(
      {super.key,
      this.timeSend,
      required this.phoneNumber,
      });

  int? timeSend;
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 58.w,
      height: 60.h,
      textStyle: const TextStyle(
        fontSize: 30,
      ),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 235, 244, 238),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.transparent),
      ),
    );
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 19, right: 19),
          child: Column(
            children: [
              const Text(
                'OTP',
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 18.h,
              ),
              const Text(
                'An Authentication code has been sent to',
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 14,
                    color: Color.fromARGB(255, 196, 194, 194)),
              ),
              SizedBox(
                height: 5.h,
              ),
              Text(
                " ${ phoneNumber}",
                style: const TextStyle(
                  letterSpacing: 2,
                  fontSize: 14,
                  color: Color(0xffF5DF99),
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 28.h,
              ),
              Pinput(
                length: 6,
                onCompleted: (value) {
                  print(value);
                },
                autofocus: true,
                showCursor: true,
                keyboardType: TextInputType.number,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!.copyWith(
                    border: Border.all(color: const Color(0xff5FD068)),
                  ),
                ),
                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                onSubmitted: (pin) => print(pin),
              ),
              SizedBox(
                height: 48.h,
              ),
              CustomButton(
                text: 'Submit',
                onPressed: () {},
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
                    '$timeSend 00.50',
                    style: TextStyles.font14yallow500,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
