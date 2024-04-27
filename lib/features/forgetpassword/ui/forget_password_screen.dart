import 'package:flutter/material.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Forget Password".tr(),
                style: TextStyles.font28Black700,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24.h),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Enter your Phone Number to reset password.'.tr(),
                  style: TextStyles.font14Black500,
                ),
              ),
            ),
            Text(
              'Phone'.tr(),
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
              hintText: 'Enter your phone'.tr(),
              validator: (p0) {},
            ),
            SizedBox(
              height: 48.h,
            ),
            CustomButton(
              onPressed: () {
                context.pushNamed(Routes.resetPasswordScreen);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //       builder: (context) => const ResetPasswordScreen()),
                // );
              },
              text: "Reset Password".tr(),
            )
          ],
        ),
      ),
    );
  }
}
