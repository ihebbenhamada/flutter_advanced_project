import 'package:flutter/material.dart';
import 'package:flutter_advanced_project/core/widgets/docdoc_button/docdoc_button.dart';
import 'package:flutter_advanced_project/core/widgets/docdoc_text_field/docdoc_text_field.dart';
import 'package:flutter_advanced_project/features/login/ui/widgets/already_have_account.dart';
import 'package:flutter_advanced_project/features/login/ui/widgets/divider.dart';
import 'package:flutter_advanced_project/features/login/ui/widgets/social_media.dart';
import 'package:flutter_advanced_project/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/color.dart';
import '../../../core/theming/text_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  bool isRememberMeChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold.copyWith(letterSpacing: -1),
                ),
                10.h.verticalSpace,
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14grayRegular.copyWith(height: 1.6),
                ),
                36.h.verticalSpace,
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const DocDocTextField(hintText: 'Email'),
                      16.h.verticalSpace,
                      DocDocTextField(
                        hintText: 'Password',
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: AppColors.mainBlue,
                          ),
                        ),
                      ),
                      24.h.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 18.h,
                                width: 18.h,
                                child: Checkbox(
                                  value: isRememberMeChecked,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      isRememberMeChecked = value!;
                                    });
                                  },
                                  activeColor: AppColors.mainBlue,
                                  side: const BorderSide(
                                    color: AppColors.gray5,
                                    width: 2,
                                  ),
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  visualDensity: VisualDensity.compact,
                                ),
                              ),
                              8.h.horizontalSpace,
                              Text(
                                'Remember me',
                                style: TextStyles.font13GrayRegular,
                              ),
                            ],
                          ),
                          Text(
                            'Forgot Password?',
                            style: TextStyles.font13BlueRegular,
                          ),
                        ],
                      ),
                      40.h.verticalSpace,
                      DocDocButton(text: 'Login', onPress: () {}),
                      40.h.verticalSpace,
                      const DividerWithText(
                        text: 'Or sign in with',
                      ),
                      30.h.verticalSpace,
                      const SocialMedia(),
                      30.h.verticalSpace,
                      const TermsAndConditionsText(),
                      20.h.verticalSpace,
                      const AlreadyHaveAccountText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
