import 'package:flutter/material.dart';
import 'package:flutter_advanced_project/core/helpers/extensions.dart';
import 'package:flutter_advanced_project/core/routing/routes.dart';
import 'package:flutter_advanced_project/core/theming/color.dart';
import 'package:flutter_advanced_project/core/widgets/docdoc_button/docdoc_button.dart';
import 'package:flutter_advanced_project/features/onboarding/ui/widgets/doc_image_and_text.dart';
import 'package:flutter_advanced_project/features/onboarding/ui/widgets/doc_logo_name.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/text_styles/text_styles.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});
  onPressGetStarted(BuildContext context) {
    context.pushNamed(Routes.loginScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(top: 25.h, bottom: 25.h),
          child: Column(
            children: [
              const DocLogoAndName(),
              30.h.verticalSpace,
              const DocImageAndText(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Column(
                  children: [
                    Text(
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      style: TextStyles.font13greyRegular,
                      textAlign: TextAlign.center,
                    ),
                    25.h.verticalSpace,
                    DocDocButton(
                      text: 'Get Started',
                      onPress: () => onPressGetStarted(context),
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
