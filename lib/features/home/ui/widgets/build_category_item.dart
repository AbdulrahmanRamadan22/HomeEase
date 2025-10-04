// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildCategoryItem extends StatelessWidget {
  const BuildCategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            color: ColorsApp.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                offset: Offset(
                  0.6,
                  0.6,
                ), // shadow direction: bottom right
              )
            ],
            border: Border.all(
              color: ColorsApp.lightGray,
              width: 0.2,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://img.freepik.com/free-vector/cleaning-service-concept-illustration_114360-6261.jpg?w=740&t=st=1696545603~exp=1696546203~hmac=5b1a7e2 ' ??
                  ' Not Found',
              width: 120.w,
              height: 120.h,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 12.h,
            ),
            Text(
              'Hourly Cleaning',
              // LocaleKeys.hourlyCleaning.tr(),
              // "hourly cleaning".tr(),
              style: TextStyles.font18Black700,
            ),
          ],
        ),
      ),
    );
  }
}
