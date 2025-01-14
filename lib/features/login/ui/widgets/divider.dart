import 'package:flutter/material.dart';

import '../../../../core/theming/color.dart';
import '../../../../core/theming/text_styles.dart';

class DividerWithText extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final Color? lineColor;
  final double thickness;
  final double spacing;

  const DividerWithText({
    super.key,
    required this.text,
    this.textStyle,
    this.lineColor = AppColors.gray6,
    this.thickness = 1.0,
    this.spacing = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Left divider line
        Expanded(
          child: Divider(
            color: lineColor,
            thickness: thickness,
          ),
        ),
        SizedBox(width: spacing),

        // Center text
        Text(
          text,
          style: textStyle ?? TextStyles.font12GrayRegular,
        ),
        SizedBox(width: spacing),

        // Right divider line
        Expanded(
          child: Divider(
            color: lineColor,
            thickness: thickness,
          ),
        ),
      ],
    );
  }
}
