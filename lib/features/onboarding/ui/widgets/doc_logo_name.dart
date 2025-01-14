import 'package:flutter/material.dart';
import 'package:flutter_advanced_project/core/image_urls/image_urls.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/text_styles.dart';

class DocLogoAndName extends StatelessWidget {
  const DocLogoAndName({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(AppImages.docdocLogo),
        10.w.horizontalSpace,
        Text(
          'DocDoc',
          style: TextStyles.font24blackBold,
        ),
      ],
    );
  }
}
