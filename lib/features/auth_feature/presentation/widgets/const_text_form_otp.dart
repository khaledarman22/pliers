import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/core/utils/extentions.dart';

textFieldOTP(bool first, last, BuildContext context) {
  return SizedBox(
    width: 50.w,
    height: 55.h,
    child: TextField(
      autofocus: true,
      onChanged: (value) {
        if (value.length == 1 && last == false) {
          FocusScope.of(context).nextFocus();
        }
        if (value.length == 0 && first == false) {
          FocusScope.of(context).previousFocus();
        }
      },
      showCursor: false,
      readOnly: false,
      textAlign: TextAlign.center,
      textAlignVertical: TextAlignVertical.center,
      style: context.textTheme.titleLarge!.copyWith(height: 1),
      keyboardType: TextInputType.number,
      maxLength: 1,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.kAntiFlashWhite2,
        counter: Offstage(
          offstage: true,
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.transparent),
            borderRadius: BorderRadius.circular(5)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: AppColors.kChineseYellow),
            borderRadius: BorderRadius.circular(5)),
      ),
    ),
  );
}
