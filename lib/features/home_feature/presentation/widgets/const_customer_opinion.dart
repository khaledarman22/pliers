import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/core/utils/app_images.dart';
import 'package:pliers/core/utils/extentions.dart';

class ConstCustomerOpinion extends StatefulWidget {
  const ConstCustomerOpinion({
    super.key,
  });

  @override
  State<ConstCustomerOpinion> createState() => _ConstCustomerOpinionState();
}

class _ConstCustomerOpinionState extends State<ConstCustomerOpinion> {
  double currentRating = 0;
  @override
  Widget build(BuildContext context) {
    return GFRating(
      value: currentRating,
      size: GFSize.LARGE,
      color: AppColors.kCoolGrey,
      filledIcon: Padding(
        padding: EdgeInsets.only(left: 2.w, right: 2.w),
        child: SvgPicture.asset(
          AppImages.star,
          color: AppColors.kChineseYellow,
          width: 20.w,
          height: 20.h,
        ),
      ),
      defaultIcon: Padding(
        padding: EdgeInsets.only(left: 2.w, right: 2.w),
        child: SvgPicture.asset(
          AppImages.star,
          width: 20.w,
          color: AppColors.kCoolGrey,
          height: 20.h,
        ),
      ),
      borderColor: AppColors.kCoolGrey,
      onChanged: (value) {
        setState(() {
          currentRating = value;
        });
      },
    );
  }
}

class ConstVerify extends StatelessWidget {
  const ConstVerify({
    required this.massage,
    super.key,
  });
  final String massage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 77.h,
      width: double.infinity,
      padding: EdgeInsets.all(20.h),
      decoration: BoxDecoration(
          color: AppColors.kWhite,
          borderRadius: BorderRadius.circular(8.r),
          boxShadow: const [
            BoxShadow(
              blurRadius: 30,
              spreadRadius: 3.75,
              offset: Offset(0, 3),
              color: Color.fromRGBO(32, 27, 57, 0.08),
            ),
          ]),
      child: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/images/verify.svg',
                  width: 30,
                  height: 30,
                ),
                10.w.pw,
                Text(
                  massage,
                  style: context.textTheme.titleSmall!.copyWith(
                    fontSize: 12.sp,
                    color: AppColors.kMaastrichtBlue.withOpacity(.6),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: Text(
              'منذ 12 دقيقة',
              style: context.textTheme.titleSmall!.copyWith(
                fontSize: 12.sp,
                color: AppColors.kMaastrichtBlue.withOpacity(.6),
              ),
            ),
          )
        ],
      ),
    );
  }
}
