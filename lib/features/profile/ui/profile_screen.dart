import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/widgets/custom_button.dart';
import 'package:home_ease/features/profile/ui/widget/card_profilescreen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    super.key,
    this.textname,
  });

  @override
  final String? textname;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool notfiy = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.lightGreen,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyles.font18Black700,
        ),
      ),
      body: Column(
        children: [
          Card(
            elevation: 4,
            child: SvgPicture.asset(
              'svgs/logo_and_name.svg',
              width: 100,
              height: 100,
            ),
          ),
          SizedBox(
            height: 11.h,
          ),
          Text(
            'Abdul Aziz Al-Qahtany ${widget.textname.toString()}',
            style: TextStyles.font16Black700,
          ),
          SizedBox(
            height: 15.h,
          ),
          CustomButton(
            width: 120,
            radius: 60.r,
            onPressed: () {},
            text: 'Edit',
            style: TextStyles.font14Black700,
          ),
          SizedBox(
            height: 28.h,
          ),
          Card_profilescreen(
            title: Text('Payment Methods', style: TextStyles.font16Black700),
            subtitle: Text('Add your credit & debit cards',
                style: TextStyles.font14Black500),
            trailing: const Icon(Icons.chevron_right),
            leading: Icon(
              Icons.payment_rounded,
              color: ColorsApp.blackOpacity,
            ),
          ),
          Card_profilescreen(
            title: Text('Location', style: TextStyles.font16Black700),
            subtitle: Text('Add your Home Location ',
                style: TextStyles.font14Black500),
            trailing: const Icon(Icons.chevron_right),
            leading: Icon(
              Icons.location_on_rounded,
              color: ColorsApp.blackOpacity,
            ),
          ),
          Card_profilescreen(
            title: Text('Push Notification', style: TextStyles.font16Black700),
            subtitle: Text('For daily update and others ',
                style: TextStyles.font14Black500),
            trailing: Switch(
                activeColor: ColorsApp.mainGreen,
                inactiveTrackColor: ColorsApp.white,
                value: notfiy,
                onChanged: (value) {
                  setState(() {
                    notfiy = value;
                  });
                }),
            leading: Icon(
              Icons.notifications,
              color: ColorsApp.blackOpacity,
            ),
          ),
          Card_profilescreen(
            title: Text('Contact Us', style: TextStyles.font16Black700),
            subtitle:
                Text('For more information ', style: TextStyles.font14Black500),
            trailing: const Icon(Icons.chevron_right),
            leading: Icon(
              Icons.call,
              color: ColorsApp.blackOpacity,
            ),
          ),
          Card_profilescreen(
            title: Text('Logout', style: TextStyles.font16Black700),
            trailing: const Icon(Icons.chevron_right),
            leading: Icon(
              Icons.logout,
              color: ColorsApp.blackOpacity,
            ),
          ),
        ],
      ),
    );
  }
}
