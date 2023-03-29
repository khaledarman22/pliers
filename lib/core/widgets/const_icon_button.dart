import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pliers/core/utils/app_colors.dart';

class ConstIconButton extends StatelessWidget {
  const ConstIconButton({
    this.visible = false,
    required this.icon,
    required this.onTap,
    super.key,
  });
  final bool visible;
  final Widget icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  blurRadius: 50,
                  color: Color(0xffD3D1D8),
                  offset: Offset(5, 10)),
            ],
            color: const Color.fromRGBO(211, 209, 216, 0.3),
            borderRadius: BorderRadius.circular(20.r)),
        width: 50.w,
        height: 50.w,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(
                top: -7,
                child: Align(
                  alignment: AlignmentDirectional.topStart,
                  child:
                      Visibility(visible: visible, child: PointOnlineOrNot()),
                )),
            Align(
              alignment: Alignment.center,
              child: icon,
            ),
          ],
        ),
      ),
    );
  }
}

class PointOnlineOrNot extends StatelessWidget {
  const PointOnlineOrNot({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: AppColors.kWhite, borderRadius: BorderRadius.circular(50.r)),
      width: 20.w,
      height: 20.w,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.kRedColor,
            borderRadius: BorderRadius.circular(50.r)),
        width: 15.w,
        height: 15.w,
      ),
    );
  }
}
