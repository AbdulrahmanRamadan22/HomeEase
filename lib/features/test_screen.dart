// import 'package:flutter/material.dart';

// class PersonalInfoModel {
//   String name;
//   String email;
//   // Add other fields as needed

//   PersonalInfoModel({this.name = '', this.email = ''});
// }

// class AddressModel {
//   String street;
//   String city;
//   // Add other fields as needed

//   AddressModel({this.street = '', this.city = ''});
// }

// class ConfirmationModel {
//   bool agreedToTerms;
//   // Add other fields as needed

//   ConfirmationModel({this.agreedToTerms = false});
// }


// class PersonalInfoStep extends StatelessWidget {
//   final PersonalInfoModel model;
//   final ValueChanged<PersonalInfoModel> onChanged;

//   PersonalInfoStep({required this.model, required this.onChanged});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         TextFormField(
//           initialValue: model.name,
//           controller: ,
//           onChanged: (value) => onChanged(model.copyWith(name: value)),
//           validator: (value) {
//             if (value.isEmpty) {
//               return 'Please enter your name';
//             }
//             return null;
//           },
//         ),
//         TextFormField(
//           initialValue: model.email,
//           onChanged: (value) => onChanged(model.copyWith(email: value)),
//           validator: (value) {
//             if (value.isEmpty) {
//               return 'Please enter your email';
//             }
//             // Add email validation logic if needed
//             return null;
//           },
//         ),
//       ],
//     );
//   }
// }

// class MyFormStepper extends StatefulWidget {
//   @override
//   _MyFormStepperState createState() => _MyFormStepperState();
// }

// class _MyFormStepperState extends State<MyFormStepper> {
//   int currentStep = 0;
//   late PersonalInfoModel personalInfo;
//   late AddressModel address;
//   late ConfirmationModel confirmation;
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   @override
//   void initState() {
//     super.initState();
//     personalInfo = PersonalInfoModel();
//     address = AddressModel();
//     confirmation = ConfirmationModel();
//   }

//   void _goToNextStep() {
//     if (_formKey.currentState!.validate()) {
//       if (currentStep < 2) {
//         setState(() {
//           currentStep += 1;
//         });
//       } else {
//         // Handle form submission
//         _submitForm();
//       }
//     }
//   }

//   void _goToPreviousStep() {
//     if (currentStep > 0) {
//       setState(() {
//         currentStep -= 1;
//       });
//     }
//   }

//   void _submitForm() {
//     // Process the form submission
//     // You can access the form data from the model objects
//     // personalInfo, address, and confirmation
//     // and perform any necessary actions like API calls, database operations, etc.
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: _formKey,
//       child: Stepper(
//         currentStep: currentStep,
//         onStepContinue: _goToNextStep,
//         onStepCancel: _goToPreviousStep,
//         steps: [
//           Step(
//             title: Text('Personal Info'),
//             content: PersonalInfoStep(
//               model: personalInfo,
//               onChanged: (value) => setState(() => personalInfo = value),
//             ),
//           ),
//           Step(
//             title: Text('Address'),
//             content: PersonalInfoStep(
//               model: personalInfo,
//               onChanged: (value) => setState(() => address = value),
//             ),
//           ),
//           Step(
//             title: Text('Confirmation'),
//             content: PersonalInfoStep(
//               model: personalInfo,
//               onChanged: (value) => setState(() => confirmation = value),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }








// // Create similar step widgets for other steps (AddressStep, ConfirmationStep, etc.)