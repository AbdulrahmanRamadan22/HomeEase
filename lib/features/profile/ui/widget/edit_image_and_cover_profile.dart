// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:home_ease/core/theming/colors.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditImageAndCoverProfile extends StatelessWidget {
  const EditImageAndCoverProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210.0.h,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Align(
            alignment: AlignmentDirectional.topCenter,
            child: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Container(
                  height: 150.0.h,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        4.0,
                      ),
                      topRight: Radius.circular(
                        4.0,
                      ),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(
                        'Not working yet',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                IconButton(
                  icon: const CircleAvatar(
                    backgroundColor: ColorsApp.mainGreen,
                    radius: 20.0,
                    child: Icon(
                      Icons.add_a_photo,
                      color: ColorsApp.white,
                      // IconBroken.Indicator,
                      // IconBroken.Camera,
                      size: 16.0,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 66.0,
                backgroundColor: ColorsApp.white,
                child: CircleAvatar(
                  radius: 64.0,
                  backgroundImage: const NetworkImage(
                    'Not working yet',
                  ),
                  backgroundColor: ColorsApp.black,
                ),
              ),
              IconButton(
                icon: const CircleAvatar(
                  backgroundColor: ColorsApp.mainGreen,
                  radius: 20.0,
                  child: Icon(
                    Icons.add_a_photo,
                    color: ColorsApp.white,
                    // IconBroken.Indicator,
                    // IconBroken.Camera,
                    size: 16.0,
                  ),
                ),
                onPressed: () {
               
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
