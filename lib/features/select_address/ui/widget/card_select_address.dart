import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardSelectAddress extends StatelessWidget {
  const CardSelectAddress({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: ColorsApp.white,
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
                      'assets/images/Ellipse 117.png',
                    ),
                  ),
                  Image.asset('assets/images/Pin_duotone_line.png')
                ],
              ),
              SizedBox(
                width: 11.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('City', style: TextStyles.font10white500),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text('Riyadh', style: TextStyles.font12white700),
                  SizedBox(
                    height: 11.h,
                  ),
                  Text('region', style: TextStyles.font10white500),
                  const SizedBox(),
                  Text('Alexander', style: TextStyles.font12white700),
                  Text('Language School', style: TextStyles.font12white700),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  Text('Street', style: TextStyles.font10white500),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text('Non', style: TextStyles.font12white700),
                  SizedBox(
                    height: 11.h,
                  ),
                  Text('Building', style: TextStyles.font10white500),
                  const SizedBox(),
                  Text('2 Floor', style: TextStyles.font12white700),
                ],
              ),
              SizedBox(
                width: 40.w,
              )
            ],
          ),
        ),
      ),
    );
  }
}
