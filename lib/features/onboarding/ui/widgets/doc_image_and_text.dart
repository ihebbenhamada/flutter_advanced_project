import 'package:flutter/material.dart';
import 'package:flutter_advanced_project/core/image_urls/image_urls.dart';
import 'package:flutter_advanced_project/core/theming/color.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/text_styles.dart';

class DocImageAndText extends StatelessWidget {
  const DocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(AppImages.docdocLogoLowOpacity),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  AppColors.white,
                  AppColors.white.withOpacity(0.0),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: const [.14, .4]),
          ),
          child: Image.asset(AppImages.docImage),
        ),
        Positioned(
          bottom: 30,
          right: 0,
          left: 0,
          child: Text(
            'Best Doctor\nAppointment App',
            style: TextStyles.font32blueExtraBold,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
