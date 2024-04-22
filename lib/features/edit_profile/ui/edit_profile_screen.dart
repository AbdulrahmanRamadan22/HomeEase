import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: TextStyles.font18Black700,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                child: Card(
                  elevation: 4,
                  child: Image.asset("assets/images/profile.png"),
                ),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Full Name',
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
                hintText: 'Enter your Name',
                validator: (p0) {},
              ),
              SizedBox(
                height: 18.h,
              ),
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
                suffixIcon: const Icon(
                  Icons.visibility,
                  color: Color(0xffB5B5B5),
                ),
                hintText: 'Enter Your Password',
                validator: (p0) {},
              ),
              SizedBox(
                height: 70.h,
              ),
              CustomButton(
                text: 'Save Changes',
                style: TextStyles.font18Black700,
                onPressed: () {
                  //   context.pushNamed(Routes.);
                },
              ),
              SizedBox(
                height: 89.h,
              ),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[100],
                    minimumSize: Size(220.w, 60.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                  ),
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete_outlined,
                    color: ColorsApp.red,
                  ),
                  label: Text(
                    'Delete Account',
                    style: TextStyles.font16Black700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
