import 'package:flutter/material.dart';
import 'package:pliers/core/themes/const_%20themes.dart';
import '../utils/app_colors.dart';
import '../utils/text_style.dart';

BottomAppBarTheme bottomAppBarTheme() => BottomAppBarTheme();

ThemeData lightThemeData() => ThemeData(
    scaffoldBackgroundColor: AppColors.kWhite,
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: Colors.transparent),
    fontFamily: 'RB',
    textTheme: AppThemes.textTheme,
    inputDecorationTheme: AppThemes.inputDecorationTheme

    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     textStyle: Styles.textStyle20.copyWith(color: AppColors.kWhiteColor),

    //     disabledBackgroundColor: AppColors.kDisableButtonColor,
    //     primary: AppColors.kMineColor,
    //     backgroundColor: AppColors.kMineColor,

    //     minimumSize: const Size(double.infinity, 60),
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(10),
    //     ),
    //     // primary: ,
    //     side: const BorderSide(
    //       color: AppColors.kMineColor,
    //       width: 1,
    //     ),
    //   ),
    // ),
    );
























      // buttonTheme: ButtonThemeData(
      //   buttonColor: AppColors.kMineColor,
      //   shape: OutlineInputBorder(
      //     borderSide: BorderSide(
      //       color: AppColors.kMineColor,
      //       width: 1,
      //     ),
      //     borderRadius: BorderRadius.circular(
      //       10,
      //     ),
      //   ),
      // ),
