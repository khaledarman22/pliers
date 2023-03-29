import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

abstract class Styles {
  // static const TextStyle textStyle35 = TextStyle(
  //   fontFamily: 'RB',
  //   color: AppColors.kMineColor,
  //   fontSize: 35,
  //   fontWeight: FontWeight.w600,
  // );
  static TextStyle textStyle26 = TextStyle(
      fontFamily: 'RB',
      fontSize: 26.sp,
      fontWeight: FontWeight.w600,
      color: AppColors.kPrimary);
  static TextStyle textStyle22 = TextStyle(
    color: AppColors.kPhilippineYellow,
    fontSize: 22.sp,
    fontWeight: FontWeight.bold,
  );

  static TextStyle textStyle18 = TextStyle(
    color: AppColors.kWhite,
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle textStyle14 = TextStyle(
    color: AppColors.kMaastrichtBlue,
    fontSize: 14.sp,
    fontWeight: FontWeight.bold,
  );

  // static var textStyle24;
}
