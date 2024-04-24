// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';

class CardSelectAddress extends StatelessWidget {
  const CardSelectAddress({
    Key? key,
    this.imagebackground,
    this.imageforground,
    required this.text_City,
    required this.text_Name_city,
    required this.text_Name_region,
    required this.text_city_region,
    required this.text_street,
    required this.text_address_street,
    required this.text_Building,
    required this.text_name_Building,
  }) : super(key: key);
  final String? imagebackground;
  final String? imageforground;
  final String text_City;
  final String text_Name_city;
  final String text_Name_region;
  final String text_city_region;
  final String text_street;
  final String text_address_street;
  final String text_Building;
  final String text_name_Building;

  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: ColorsApp.mainGreen,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 14.h),
        child: InkWell(
          onTap: () {},
          child: Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    child: Image.asset(
                      imagebackground!,
                    ),
                  ),
                  Image.asset(imageforground!)
                ],
              ),
              SizedBox(
                width: 11.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(text_City, style: TextStyles.font10white500),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(text_city_region, style: TextStyles.font12white700),
                  SizedBox(
                    height: 11.h,
                  ),
                  Text(text_city_region, style: TextStyles.font10white500),
                  const SizedBox(),
                  Text(text_Name_region, style: TextStyles.font12white700),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Text(text_street, style: TextStyles.font10white500),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(text_address_street, style: TextStyles.font12white700),
                  SizedBox(
                    height: 11.h,
                  ),
                  Text(text_Building, style: TextStyles.font10white500),
                  Text(text_name_Building, style: TextStyles.font12white700),
                  SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
              SizedBox(
                width: 44.w,
              )
            ],
          ),
        ),
      ),
    );
  }
}
