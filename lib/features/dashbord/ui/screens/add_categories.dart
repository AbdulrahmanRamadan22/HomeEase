import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:home_ease/core/widgets/app_text_form_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/widgets/custom_button.dart';

class AddCategores extends StatefulWidget {
  const AddCategores({super.key});

  @override
  State<AddCategores> createState() => _AddCategoresState();
}

class _AddCategoresState extends State<AddCategores> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Add Categores', style: TextStyles.font18Black700),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 20.h),
          child: Column(
            children: [
              AppTextFormField(
                hintText: 'Enter Categores Name',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Categores Name';
                  }
                },
                controller: name,
              ),
              SizedBox(
                height: 12.h,
              ),
              SizedBox(height: 20.h),
              CustomButton(
                text: 'Add Categores',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
