import 'package:flutter/material.dart';
import 'package:flutter_advanced_project/core/image_urls/image_urls.dart';
import 'package:flutter_advanced_project/core/theming/color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        // Google logo circle
        CircleAvatar(
          radius: 46.h / 2, // Diameter divided by 2 for the radius
          backgroundColor: AppColors.gray7,
          child: Image.asset(
            AppImages.google, // Replace with your Google logo asset
            height: 32.h,
            width: 32.h,
          ),
        ),
        // Facebook logo circle
        CircleAvatar(
          radius: 46.h / 2,
          backgroundColor: AppColors.gray7,
          child: Image.asset(
            AppImages.facebook, // Replace with your Facebook logo asset
            height: 23.h,
            width: 23.h,
          ),
        ),
        // Apple logo circle
        CircleAvatar(
          radius: 46.h / 2,
          backgroundColor: AppColors.gray7,
          child: Image.asset(
            AppImages.apple, // Replace with your Apple logo asset
            height: 27.h,
            width: 23.h,
          ),
        ),
      ],
    );
  }
}
