import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theming/color.dart';
import '../../theming/text_styles.dart';

/// A reusable and customizable text field widget with predefined styles.
/// Provides options for content padding, border styles, text styles, and hint text.
class DocDocTextField extends StatelessWidget {
  /// Creates a [DocDocTextField].
  ///
  /// The [hintText] parameter is required to provide a placeholder text.
  const DocDocTextField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    this.inputTextStyle,
    this.hintStyle,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.fillColor,
  });

  /// Padding inside the text field.
  /// Defaults to `EdgeInsets.symmetric(horizontal: 20, vertical: 18.h)`.
  final EdgeInsetsGeometry? contentPadding;

  /// Border style when the text field is focused.
  /// Defaults to a rounded outline border with `AppColors.mainBlue`.
  final InputBorder? focusedBorder;

  /// Border style when the text field is enabled but not focused.
  /// Defaults to a rounded outline border with `AppColors.gray2`.
  final InputBorder? enabledBorder;

  /// Style for the input text.
  /// Defaults to `TextStyles.font14DarkBlueMedium`.
  final TextStyle? inputTextStyle;

  /// Style for the hint text.
  /// Defaults to `TextStyles.font14grayMedium`.
  final TextStyle? hintStyle;

  /// Placeholder text displayed when the field is empty.
  final String hintText;

  /// If true, hides the input text (useful for passwords).
  /// Defaults to `false`.
  final bool? isObscureText;

  /// A widget to display at the end of the text field, such as an icon.
  final Widget? suffixIcon;

  /// Background color of the text field.
  /// Defaults to `AppColors.gray3`.
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        // Ensures the input field is dense.
        isDense: true,

        // Padding inside the input field.
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20, vertical: 18.h),

        // Border style when the text field is not focused.
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: const BorderSide(color: AppColors.gray2, width: 1.3),
            ),

        // Border style when the text field is focused.
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide:
                  const BorderSide(color: AppColors.mainBlue, width: 1.3),
            ),

        // Style for the hint text.
        hintStyle: hintStyle ?? TextStyles.font14grayMedium,

        // Placeholder text for the input field.
        hintText: hintText,

        // Background color for the input field.
        fillColor: fillColor ?? AppColors.gray3,
        filled: true,
        suffixIcon: suffixIcon,
      ),

      // Text style for the input content.
      style: inputTextStyle ?? TextStyles.font14DarkBlueMedium,

      // Determines whether the text is obscured.
      obscureText: isObscureText ?? false,
    );
  }
}
