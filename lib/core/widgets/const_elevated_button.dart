import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/core/utils/app_string.dart';
import 'package:pliers/core/utils/extentions.dart';

class ConstElevatedButtom extends StatelessWidget {
  const ConstElevatedButtom(
      {required this.onPressed,
      this.topColor = AppColors.kPrimary,
      this.endColor = AppColors.kBondiBlue,
      this.text = AppString.next,
      this.textColor = AppColors.kWhite,
      required this.width,
      super.key});
  final void Function()? onPressed;
  final Color topColor;
  final Color endColor;
  final Color textColor;
  final String text;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 53.h,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            topColor,
            endColor,
          ],
        ),
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          text,
          style: context.textTheme.titleSmall?.copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
//              AppColors.kChineseYellow,
          //    AppColors.kPhilippineYellow,
