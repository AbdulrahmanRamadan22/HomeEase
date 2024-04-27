import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:home_ease/features/hourlycleaning/ui/widget/button_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerStepOne extends StatelessWidget {
  const ContainerStepOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Period',
          style: TextStyles.font16Black700,
        ),
        SizedBox(height: 5.h),
        const Row(
          children: [
            ButtonCard(
              text: 'Morning',
              image: 'assets/images/sun_icon.png',
            ),
            Spacer(),
            ButtonCard(
              text: 'Night',
              image: 'assets/images/Night_icon.png',
            ),
          ],
        ),
        SizedBox(
          height: 28.h,
        ),
        Text('number of Hours', style: TextStyles.font16Black600),
        SizedBox(
          height: 8.h,
        ),
        AppTextFormField(
            keyboardType: TextInputType.number,
            hintText: 'Enter number of hours',
            backgroundColor: ColorsApp.white,
            suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_downward_outlined,
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter number of hours';
              }
            }),
        SizedBox(
          height: 21.h,
        ),
        Text('Nationality', style: TextStyles.font16Black600),
        SizedBox(
          height: 8.h,
        ),
        AppTextFormField(
            hintText: 'Enter Nationality',
            backgroundColor: ColorsApp.white,
            suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_downward_outlined,
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter number of hours';
              }
            }),
        SizedBox(
          height: 21.h,
        ),
        Text('City', style: TextStyles.font16Black600),
        SizedBox(
          height: 8.h,
        ),
        AppTextFormField(
            hintText: 'Enter City',
            backgroundColor: ColorsApp.white,
            suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_downward_outlined,
                )),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter number of hours';
              }
            }),
      ],
    );
  }
}
