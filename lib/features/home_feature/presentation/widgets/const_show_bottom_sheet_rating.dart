import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/core/utils/app_images.dart';
import 'package:pliers/core/utils/app_string.dart';
import 'package:pliers/core/utils/extentions.dart';
import 'package:pliers/core/widgets/const_elevated_button.dart';
import 'package:pliers/features/home_feature/presentation/widgets/const_customer_opinion.dart';

class ConstShowBottomSheetRating extends StatelessWidget {
  const ConstShowBottomSheetRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        color: AppColors.kWhite,
        height: 420.h,
        width: context.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            15.h.ph,
            Container(
              height: 2,
              width: 38.w,
              color: const Color.fromRGBO(0, 28, 43, 0.7),
            ),
            18.h.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppString.careyourthink,
                  style: context.textTheme.titleSmall!.copyWith(
                    color: AppColors.kMaastrichtBlue,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                15.w.pw,
                SvgPicture.asset(
                  AppImages.love,
                  width: 15,
                  height: 15,
                )
              ],
            ),
            24.h.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppString.delegateevaluation),
                10.w.pw,
                const ConstCustomerOpinion(),
              ],
            ),
            8.h.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppString.serviceevaluation),
                10.w.pw,
                const ConstCustomerOpinion(),
              ],
            ),
            28.h.ph,
            TextFormField(
              maxLines: 3,
              decoration: InputDecoration(
                fillColor: AppColors.kAntiFlashWhite2,
                filled: true,
                hintText: AppString.sendhint,
                hintStyle: context.textTheme.titleSmall!.copyWith(
                  fontSize: 12.sp,
                  color: AppColors.kMaastrichtBlue.withOpacity(.5),
                ),
              ),
              style: context.textTheme.titleSmall!
                  .copyWith(fontSize: 12.sp, color: AppColors.kMaastrichtBlue),
            ),
            42.h.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                ConstElevatedButtom(
                    text: AppString.send,
                    width: context.width - 50.w,
                    onPressed: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }
}
