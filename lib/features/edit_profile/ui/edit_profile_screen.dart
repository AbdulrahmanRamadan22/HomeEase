import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditProfileSreen extends StatelessWidget {
  const EditProfileSreen({super.key});

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
                  child: SvgPicture.asset(
                    'assets/svgs/Group 4.svg',
                    width: 100.w,
                    height: 100.h,
                  ),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 180.w,
                    height: 60.h,
                    child: Card(
                      color: ColorsApp.black,
                      elevation: 0,
                      child: Row(
                        children: [
                          Icon(
                            Icons.delete_outlined,
                            color: ColorsApp.darkGreen,
                          ),
                          TextButton(
                            child: Text(
                              'Delete Account',
                              style: TextStyles.font14Black500,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
