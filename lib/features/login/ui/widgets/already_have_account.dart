import 'package:flutter/material.dart';
import 'package:flutter_advanced_project/core/theming/color.dart';

import '../../../../core/theming/text_styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account yet? ',
            style: TextStyles.font12GrayRegular,
          ),
          TextSpan(
            text: 'Sign Up',
            style: TextStyles.font12DarkBlueRegular
                .copyWith(color: AppColors.mainBlue),
          ),
        ],
      ),
    );
  }
}
