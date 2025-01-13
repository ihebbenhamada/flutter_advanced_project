import 'package:flutter/material.dart';
import 'package:flutter_advanced_project/core/theming/color.dart';

import '../../theming/text_styles/text_styles.dart';

class DocDocButton extends StatelessWidget {
  const DocDocButton({super.key, required this.text, required this.onPress});
  final String text;
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        minimumSize: WidgetStateProperty.all(
          const Size(double.infinity, 52),
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyles.font16White600,
        ),
      ),
    );
  }
}
