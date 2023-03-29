import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/core/utils/extentions.dart';

BottomNavigationBarItem constItemBttomNavigationBar({
  required String imageActiveIcon,
  required String label,
  // required  String imageNotActiveIcon,
}) {
  return BottomNavigationBarItem(
    activeIcon: Transform.translate(
      offset: const Offset(0, -9),
      child: Align(
        alignment: Alignment.center,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 50.w,
                height: 3,
                decoration: BoxDecoration(
                  color: AppColors.kPrimary,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            5.ph,
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: SvgPicture.asset(
                  imageActiveIcon,
                  width: 24.w,
                  height: 24.h,
                  color: AppColors.kPrimary,
                ),
              ),
            ),
          ],
        ),
      ),
    ),

    label: label, // تعيين عنوان العنصر
    icon: SvgPicture.asset(
      imageActiveIcon,
      width: 24.w,
      height: 24.w,
      color: const Color(0xff8B90A0),
    ),
    // تعيين الأيقونة الغير نشطة
  );
}
