import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/core/utils/app_images.dart';
import 'package:pliers/core/utils/app_string.dart';
import 'package:pliers/core/utils/extentions.dart';

class ConstLoginWithGoogle extends StatelessWidget {
  const ConstLoginWithGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      height: 53.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors.kAntiFlashWhite),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
        child: Row(
          children: [
            Image.asset(height: 30, AppImages.iconGoogle),
            16.pw,
            Text(
              AppString.loginWithGoogle,
              style: context.textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w400, color: AppColors.kDavysGrey),
            )
          ],
        ),
      ),
    );
  }
}
