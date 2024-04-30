import 'package:date_picker_timeline/extra/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/features/dashbord/ui/widget/admin_card_db.dart';

class DashBordScreen extends StatelessWidget {
  const DashBordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HomeScreen",
          style: TextStyles.font18Black700,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Wrap(
                  spacing: 20.w,
                  runSpacing: 30.h,
                  alignment: WrapAlignment.center,
                  children: [
                    SizedBox(
                      child: AdminCardDb(
                        image: 'assets/images/profile.png',
                        title: 'Catigoriey',
                        onTap: () {
                          Navigator.pushNamed(
                              context, '/addcategoriesdashbordscreen');
                        },
                      ),
                    ),
                    const SizedBox(
                      child: AdminCardDb(
                        image: 'assets/images/profile.png',
                        title: 'VOVO',
                      ),
                    ),
                    const SizedBox(
                      child: AdminCardDb(
                        image: 'assets/images/profile.png',
                        title: 'VOVO',
                      ),
                    ),
                    const SizedBox(
                      child: AdminCardDb(
                        image: 'assets/images/profile.png',
                        title: 'VOVO',
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
