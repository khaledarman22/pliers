import 'package:flutter/material.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/core/utils/text_style.dart';

class AppThemes {
  static TextTheme textTheme = TextTheme(
    bodySmall: Styles.textStyle26,
    titleLarge: Styles.textStyle22,
    titleMedium: Styles.textStyle18,
    titleSmall: Styles.textStyle14,
  );

  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    // hintStyle: Styles.textStyle15,

    filled: true,
    fillColor: AppColors.kWhite,

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: const BorderSide(
        width: 1,
        color: AppColors.kPlatinum,
      ),
    ),
    contentPadding:
        const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: AppColors.kPlatinum,
      ),
      borderRadius: BorderRadius.circular(6.0),
    ),
    errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        width: 1,
        color: AppColors.kRedColor,
      ),
      borderRadius: BorderRadius.circular(6.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        width: 1,
        color: AppColors.kPlatinum,
      ),
      borderRadius: BorderRadius.circular(6.0),
    ),
  );
}
