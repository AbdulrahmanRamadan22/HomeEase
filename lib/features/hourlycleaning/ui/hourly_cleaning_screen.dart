import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:home_ease/features/hourlycleaning/ui/widget/button_card.dart';
import 'package:home_ease/features/hourlycleaning/ui/widget/containet_step_1.dart';

class HourlyCleaningScreen extends StatefulWidget {
  const HourlyCleaningScreen({
    key,
  }) : super(key: key);

  @override
  _HourlyCleaningScreen createState() => _HourlyCleaningScreen();
}

class _HourlyCleaningScreen extends State<HourlyCleaningScreen> {
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
                    'Hourly cleaning',
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
            flex: 3,
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
                      print('Completed, check fields.');
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
                controlsBuilder:
                    (BuildContext context, ControlsDetails controlsDetails) {
                  return Container(
                    margin: EdgeInsets.only(top: 100.h),
                    child: CustomButton(
                      onPressed: () {
                        setState(() {
                          if (_currentStep < _mySteps().length - 1) {
                            _currentStep = _currentStep + 1;
                          } else {
                            //Logic to check if everything is completed
                            print('Completed, check fields.');
                          }
                        });
                      },
                      text: 'Next',
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }

  List<Step> _mySteps() {
    List<Step> steps = [
      Step(
        title: const Text('Step 1'),
        content: const ContainerStepOne(),
        isActive: _currentStep >= 0,
      ),
      Step(
        title: const Text('Step 2'),
        content: const TextField(),
        isActive: _currentStep >= 1,
      ),
      Step(
        title: const Text('Step 3'),
        content: const TextField(),
        isActive: _currentStep >= 2,
      )
    ];
    return steps;
  }
}
