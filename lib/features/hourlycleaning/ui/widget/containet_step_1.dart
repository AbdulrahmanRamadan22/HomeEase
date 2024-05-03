import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:home_ease/features/hourlycleaning/ui/widget/button_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';

class ContainerStepOne extends StatefulWidget {
  const ContainerStepOne({
    super.key,
  });

  @override
  State<ContainerStepOne> createState() => _ContainerStepOneState();
}

class _ContainerStepOneState extends State<ContainerStepOne> {
  int _currentStep = 0;

  final _formKey = GlobalKey<FormState>();

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Period',
            style: TextStyles.font16Black700,
          ),
          SizedBox(height: 5.h),
          Row(
            children: [
              ButtonCard(
                onPressed: () {},
                text: 'Morning',
                image: 'assets/images/sun_icon.png',
              ),
              const Spacer(),
              ButtonCard(
                onPressed: () {},
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
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter number of hours';
                }
                return null;
              }),
          SizedBox(
            height: 21.h,
          ),
          Text('Nationality', style: TextStyles.font16Black600),
          SizedBox(
            height: 8.h,
          ),
          AppTextFormField(
              suffixIcon:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.ac_unit)),
              hintText: 'Enter Nationality',
              backgroundColor: ColorsApp.white,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter Nationality';
                }
                return null;
              }),
          SizedBox(
            height: 21.h,
          ),
          Text('City', style: TextStyles.font16Black600),
          SizedBox(
            height: 8.h,
          ),
          AppTextFormField(
              controller: TextEditingController(),
              hintText: 'Enter City',
              backgroundColor: ColorsApp.white,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please enter City';
                }
                return null;
              }),
          SizedBox(
            height: 10.h,
          ),
          CustomButton(
            onPressed: () {
              setState(() {
                if (_formKey.currentState!.validate()) {
                  _currentStep +=1;
                }
              });
            },
            text: 'Next',
          ),
        ],
      ),
    );
  }
}
