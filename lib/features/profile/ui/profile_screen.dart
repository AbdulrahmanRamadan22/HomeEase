import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/features/profile/ui/widget/card_profilescreen.dart';
import 'package:home_ease/features/profile/ui/widget/image_and_name_edit_card.dart';
import 'package:easy_localization/easy_localization.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    super.key,
  });

  @override
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
          'Profile'.tr(),
          style: TextStyles.font18Black700,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [

            const ImageAndNameEditCard(),

            
           
            Card_profilescreen(
              title: Text('Payment Methods'.tr(), style: TextStyles.font16Black700),
              subtitle: Text('Add your credit & debit cards'.tr(),
                  style: TextStyles.font14Black500),
              trailing: const Icon(Icons.chevron_right),
              leading: Icon(
                Icons.payment_rounded,
                color: ColorsApp.blackOpacity,
              ),
            ),
            Card_profilescreen(
              title: Text('Location'.tr(), style: TextStyles.font16Black700),
              subtitle: Text('Add your Home Location '.tr(),
                  style: TextStyles.font14Black500),
              trailing: const Icon(Icons.chevron_right),
              leading: Icon(
                Icons.location_on_rounded,
                color: ColorsApp.blackOpacity,
              ),
            ),
            Card_profilescreen(
              title:
                  Text('Push Notification'.tr(), style: TextStyles.font16Black700),
              subtitle: Text('For daily update and others '.tr(),
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
              title: Text('Contact Us'.tr(), style: TextStyles.font16Black700),
              subtitle: Text('For more information '.tr(),
                  style: TextStyles.font14Black500),
              trailing: const Icon(Icons.chevron_right),
              leading: Icon(
                Icons.call,
                color: ColorsApp.blackOpacity,
              ),
            ),
            Card_profilescreen(
              title: Text('Logout'.tr(), style: TextStyles.font16Black700),
              trailing: const Icon(Icons.chevron_right),
              leading: Icon(
                Icons.logout,
                color: ColorsApp.blackOpacity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
