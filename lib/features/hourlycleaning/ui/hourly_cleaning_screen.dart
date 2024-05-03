import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/helpers/navigation_extensions.dart';
import 'package:home_ease/core/routing/routes.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/card_address_location.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:home_ease/core/widgets/show_snack_bar.dart';
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

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.lightGreen,
      appBar: AppBar(
        backgroundColor: ColorsApp.white,
      ),
      body: Form(
        key: formKey,
        child: Column(
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
<<<<<<< HEAD
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
=======
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
>>>>>>> 856050c987ccf882e221f8bf483e6b338b86fade
                      } else {
                        //Logic to check if everything is completed
                        print('Completed, check fields.'.tr());
                      }
<<<<<<< HEAD
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
                              validateThenDoHome(context);
                              //Logic to check if everything is completed
                              // print('Completed, check fields.'.tr());
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
=======
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
>>>>>>> 856050c987ccf882e221f8bf483e6b338b86fade
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
<<<<<<< HEAD
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Fliter'.tr(), style: TextStyles.font16Black700),
            SizedBox(height: 8.h),
            Row(
              children: [
                Container(
                  color: ColorsApp.white,
                  width: 150.w,
                  child: DropdownButtonFormField<String>(
                    validator: (value) {
                      if (value == null) {
                        return 'This field is required'.tr();
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorsApp.white,
                        ),
                      ),
                    ),
                    value: dropdownValue1,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue1 = newValue!;
                      });
                    },
                    items: <String>[
                      'Price'.tr(),
                      '\$100'.tr(),
                      '\$200'.tr(),
                      '\$300'.tr(),
                      '\$500'.tr()
                    ].map<DropdownMenuItem<String>>(
                      (String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      },
                    ).toList(),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Container(
                  color: ColorsApp.white,
                  width: 150.w,
                  child: DropdownButtonFormField<String>(
                    validator: (value) {
                      if (value == null) {
                        return 'This field is required'.tr();
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: ColorsApp.white,
                        ),
                      ),
                    ),
                    value: dropdownValue2,
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue2 = newValue!;
                      });
                    },
                    items: <String>[
                      'Evaluation'.tr(),
                      '20%'.tr(),
                      '50%'.tr(),
                      '70%'.tr(),
                      '80%'.tr(),
                      '100%'.tr(),
                    ].map<DropdownMenuItem<String>>(
                      (String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      },
                    ).toList(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 28.h,
            ),
            CardDetils(
              imageIcon: 'assets/images/talg131.png',
              textStar: '⭐',
              cityName: 'Egypt'.tr(),
              hour: '4 HOURS'.tr(),
              priceName: 'Price'.tr(),
              priceNumber: '1152'.tr(),
              hourlycleanText: 'Hourly cleaning'.tr(),
              subtitleText1: 'Sed ut perspiciatis unde omnis iste'.tr(),
              subtitleText2: 'natus error sit voluptatem accusantium'.tr(),
              imageHourlyclean: 'assets/images/hour_icon.png',
              imagecity: 'assets/images/city.png',
            ),
            SizedBox(
              height: 8.h,
            ),
            CardDetils(
              imageIcon: 'assets/images/talg131.png',
              textStar: '⭐',
              cityName: 'Egypt'.tr(),
              hour: '4 HOURS'.tr(),
              priceName: 'Price'.tr(),
              priceNumber: '1152'.tr(),
              hourlycleanText: 'Hourly cleaning'.tr(),
              subtitleText1: 'Sed ut perspiciatis unde omnis iste'.tr(),
              subtitleText2: 'natus error sit voluptatem accusantium'.tr(),
              imageHourlyclean: 'assets/images/hour_icon.png',
              imagecity: 'assets/images/city.png',
            ),
          ],
        ),
=======
        content: const ContainerStep2(),
>>>>>>> 856050c987ccf882e221f8bf483e6b338b86fade
        isActive: _currentStep >= 1,
      ),
      Step(
        title: Text(
          'Step 3'.tr(),
          style: TextStyles.font12mainGreen700,
        ),
<<<<<<< HEAD
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardAddressLocation(
              subtitle: 'Please add Your address'.tr(),
              title: 'your location'.tr(),
              imagebackground: 'assets/images/Ellipse 117.png',
              foregroundImage: 'assets/images/Pin_duotone_line.png',
            ),
            SizedBox(
              height: 8.h,
            ),
            Text('number of visits'.tr(), style: TextStyles.font16Black600),
            SizedBox(
              height: 8.h,
            ),
            DropdownButtonFormField<String>(
              validator: (value) {
                if (value == null) {
                  return 'please choose rquired field'.tr();
                }
                return null;
              },
              onTap: () {},
              decoration: const InputDecoration(
                filled: true,
                fillColor: ColorsApp.white,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: ColorsApp.white,
                  ),
                ),
              ),
              value: dropdownValue3,
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue3 = newValue!;
                });
              },
              items: <String>[''.tr(), '1'.tr(), '2'.tr(), '3'.tr(), '4'.tr()]
                  .map<DropdownMenuItem<String>>(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                },
              ).toList(),
            ),
            SizedBox(
              height: 11.h,
            ),
            Text('Choose Date & Time'.tr(), style: TextStyles.font18Black700),
            SizedBox(
              height: 18.h,
            ),
            Container(
              child: DatePicker(
                DateTime.now(),
                height: 100,
                width: 80,
                initialSelectedDate: DateTime.now(),
                selectionColor: ColorsApp.mainGreen,
                selectedTextColor: Colors.white,
                dateTextStyle: TextStyles.font28Black700,
                dayTextStyle: TextStyles.font10Bgray500,
                monthTextStyle: TextStyles.font16Black700,
                onDateChange: (date) {
                  selectedDate = date;
                },
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Text(
              'Choose Time'.tr(),
              style: TextStyles.font18Black700,
            ),
            SizedBox(
              height: 24.h,
            ),
            Container(
              color: ColorsApp.white,
              width: double.infinity,
              height: 100,
              child: TimePickerSpinner(
                itemWidth: 50,
                is24HourMode: false,
                normalTextStyle: TextStyles.font16Black700,
                highlightedTextStyle: TextStyles.font24mainGreen700,
                spacing: 5,
                itemHeight: 50,
                isForce2Digits: true,
                onTimeChange: (time) {
                  print('Selected time: ${time.hour}:${time.minute}');
                },
              ),
            ),
          ],
        ),
=======
        content: ContainerStep3(),
>>>>>>> 856050c987ccf882e221f8bf483e6b338b86fade
        isActive: _currentStep >= 2,
      ),
    ];
    return steps;
  }

  void validateThenDoHome(BuildContext context) {
    if (formKey.currentState!.validate()) {
      showSnackBar(
        context,
        content: "You successfully go to home screen",
        backgroundColor: ColorsApp.mainGreen,
      );
      context.pushNamed(Routes.homeLayout);
    }
  }
}
