import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';

class AddAddressScrean extends StatelessWidget {
  const AddAddressScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Add Address',
          style: TextStyles.font18Black700,
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 500.h,
          ),
        ],
      ),
    );
  }
}
