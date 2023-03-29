import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/core/utils/extentions.dart';

class ConstMainItems extends StatelessWidget {
  const ConstMainItems({
    required this.onTap,
    required this.topPositionIcon,
    required this.iconImage,
    required this.nameAr,
    required this.nameEn,
    // required this.isChicked,
    required this.colorPorder,
    required this.colorText,
    super.key,
  });
  final Function()? onTap;
  final double topPositionIcon;
  final String iconImage;
  final String nameAr;
  final String nameEn;
  // final bool isChicked;
  final Color colorPorder;
  final Color colorText;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 157.w,
        height: 167.53.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.kWhite,
          border: Border.all(
            color: colorPorder, //                   <--- border color
            width: 1.0,
          ),
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(53, 53, 53, 0.1), //New
                blurRadius: 25.0,
                offset: Offset(0, 4))
          ],
        ),
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Positioned(
                top: -1,
                child: Container(
                  width: 70,
                  height: 30,
                  color: AppColors.kWhite,
                )),
            Positioned(
              top: topPositionIcon,
              child: Image.asset(
                width: 80.w,
                height: 80.w,
                iconImage,
              ),
            ),
            Positioned(
              // top: -60,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    nameAr,
                    style: context.textTheme.titleLarge!.copyWith(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700,
                        color: colorText),
                  ),
                  Text(
                    nameEn,
                    style: context.textTheme.titleLarge!.copyWith(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w400,
                      color: colorText,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
