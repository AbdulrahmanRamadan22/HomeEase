import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_ease/core/helpers/app_regex.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Edit Profile'.tr(),
          style: TextStyles.font18Black700,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        CustomButton(
                          height: 50,
                          onPressed: () {},
                          text: 'upload profile',
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        CustomButton(
                          height: 50,
                          onPressed: () {},
                          text: 'upload cover',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Full Name'.tr(),
                    style: TextStyles.font16Black600,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  AppTextFormField(
                    suffixIcon: const Icon(
                      Icons.person_2_outlined,
                      color: Color(0xffB5B5B5),
                    ),
                    hintText: 'Enter your Name'.tr(),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a valid Full Name'.tr();
                      } else if (value.length <= 3) {
                        return 'fullName must be at least 4 characters'.tr();
                      }
                    },
                  ),
                  SizedBox(
                    height: 18.h,
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
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter mobile number';
                      } else if (!AppRegex.isPhoneNumberValid(value)) {
                        return 'Please enter valid mobile number';
                      }
                    },
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  CustomButton(
                    text: 'Save Changes'.tr(),
                    style: TextStyles.font18Black700,
                    onPressed: () {
                      // uploadProfileImage
                      //   context.pushNamed(Routes.);
                    },
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  // Align(
                  //   alignment: Alignment.center,
                  //   child: ElevatedButton.icon(
                  //     style: ElevatedButton.styleFrom(
                  //       backgroundColor: Colors.red[100],
                  //       minimumSize: Size(220.w, 60.h),
                  //       shape: RoundedRectangleBorder(
                  //         borderRadius: BorderRadius.circular(16.r),
                  //       ),
                  //     ),
                  //     onPressed: () {},
                  //     icon: Icon(
                  //       Icons.delete_outlined,
                  //       color: ColorsApp.red,
                  //     ),
                  //     label: Text(
                  //       'Delete Account'.tr(),
                  //       style: TextStyles.font16Black700,
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 50.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
