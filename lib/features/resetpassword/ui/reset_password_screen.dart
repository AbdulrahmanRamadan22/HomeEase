import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "Reset Password".tr(),
                style: TextStyles.font28Black700,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24.h),
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: 321.w,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Enter your Phone Number to reset password.'.tr(),
                    style: TextStyles.font14Black500,
                  ),
                ),
              ),
            ),
            Text(
              'Password'.tr(),
              style: TextStyles.font16Black600,
            ),
            SizedBox(
              height: 8.h,
            ),
            AppTextFormField(
              suffixIcon: const Icon(
                Icons.visibility_outlined,
                color: Color(0xffB5B5B5),
              ),
              hintText: 'Enter Your Password'.tr(),
              validator: (p0) {},
            ),
            SizedBox(
              height: 18.h,
            ),
            Text(
              'Confirm Password'.tr(),
              style: TextStyles.font16Black600,
            ),
            SizedBox(
              height: 8.h,
            ),
            AppTextFormField(
              suffixIcon: const Icon(
                Icons.visibility_outlined,
                color: Color(0xffB5B5B5),
              ),
              hintText: 'Enter Your Confirm Password'.tr(),
              validator: (p0) {},
            ),
            SizedBox(
              height: 48.h,
            ),
            CustomButton(
              onPressed: () {},
              text: "Save Password".tr(),
            )
          ],
        ),
      ),
    );
  }
}
