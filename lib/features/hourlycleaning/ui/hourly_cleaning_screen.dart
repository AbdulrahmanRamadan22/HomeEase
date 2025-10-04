import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:home_ease/core/widgets/card_address_location.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:home_ease/features/hourlycleaning/ui/widget/button_card.dart';
import 'package:home_ease/features/hourlycleaning/ui/widget/card_detils_step2.dart';
import 'package:home_ease/features/hourlycleaning/ui/widget/container_step.3.dart';
import 'package:home_ease/features/hourlycleaning/ui/widget/container_step_2.dart';
import 'package:home_ease/features/hourlycleaning/ui/widget/containet_step_1.dart';
import 'package:time_picker_spinner/time_picker_spinner.dart';

class HourlyCleaningScreen extends StatefulWidget {
  const HourlyCleaningScreen({
    key,
  }) : super(key: key);

  @override
  _HourlyCleaningScreen createState() => _HourlyCleaningScreen();
}

class _HourlyCleaningScreen extends State<HourlyCleaningScreen> {
  final _formKey = GlobalKey<FormState>();

  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.lightGreen,
      appBar: AppBar(
        backgroundColor: ColorsApp.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24.w, right: 20),
            child: Container(
              color: ColorsApp.white,
              child: Row(
                children: [
                  Text(
                    'Hourly cleaning'.tr(),
                    style: TextStyles.font24mainGreen700,
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/images/flat.png',
                    width: 100,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Stepper(
                elevation: 0,
                type: StepperType.horizontal,
                steps: _mySteps(),
                currentStep: _currentStep,
                onStepTapped: (step) {
                  setState(() {
                    _currentStep = step;
                  });
                },
                onStepContinue: () {
                  setState(() {
                    if (_currentStep < _mySteps().length - 1) {
                      _currentStep = _currentStep + 1;
                    } else {
                      //Logic to check if everything is completed
                      print('Completed, check fields.'.tr());
                    }
                  });
                },
                onStepCancel: () {
                  setState(
                    () {
                      if (_currentStep > 0) {
                        _currentStep = _currentStep - 1;
                      } else {
                        _currentStep = 0;
                      }
                    },
                  );
                },
                //  زرار Next
                controlsBuilder:
                    (BuildContext context, ControlsDetails controlsDetails) {
                  return Container();
                }),
          ),
        ],
      ),
    );
  }

  List<Step> _mySteps() {
    List<Step> steps = [
      Step(
        
        title: Text(
          'Step 1'.tr(),
          style: TextStyles.font12mainGreen700,
        ),
        content: const ContainerStepOne(),
        isActive: _currentStep >= 0,
      ),
      Step(
        title: Text(
          'Step 2'.tr(),
          style: TextStyles.font12mainGreen700,
        ),
        content: const ContainerStep2(),
        isActive: _currentStep >= 1,
      ),
      Step(
        title: Text(
          'Step 3'.tr(),
          style: TextStyles.font12mainGreen700,
        ),
        content: ContainerStep3(),
        isActive: _currentStep >= 2,
      ),
    ];
    return steps;
  }
}
