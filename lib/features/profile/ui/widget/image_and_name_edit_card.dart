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
          border: Border.all(color: ColorsApp.blackOpacity, width: 0.1),
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              color: ColorsApp.blackOpacity,
            )
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          imageProfile(),
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

CircleAvatar imageProfile() {
  return const CircleAvatar(
    radius: 72.0,
    backgroundColor: Color.fromARGB(255, 89, 251, 103),
    child: CircleAvatar(
        radius: 70.0,
        backgroundImage: NetworkImage(
            "https://media.istockphoto.com/id/587805156/vector/profile-picture-vector-illustration.jpg?s=612x612&w=0&k=20&c=gkvLDCgsHH-8HeQe7JsjhlOY6vRBJk_sKW9lyaLgmLo=")),
  );
}
