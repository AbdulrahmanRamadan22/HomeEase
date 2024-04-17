import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ImageAndNameEditCard extends StatelessWidget {
  const ImageAndNameEditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 18.h),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 24.h),
      decoration: BoxDecoration(
          color: ColorsApp.white,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: ColorsApp.blackOpacity,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/profile.png"),
          SizedBox(
            height: 12.h,
          ),
          Text(
            'Abdul Aziz Al-Qahtany ',
            style: TextStyles.font16Black700,
          ),
          SizedBox(
            height: 15.h,
          ),
          CustomButton(
            width: 120.w,
            height: 55.h,
            radius: 60.r,
            onPressed: () {},
            text: 'Edit',
            style: TextStyles.font14Black700,
          ),
        ],
      ),
    );
  }
}
