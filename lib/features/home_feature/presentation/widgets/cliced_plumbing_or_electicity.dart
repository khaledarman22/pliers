import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/core/utils/app_images.dart';
import 'package:pliers/core/utils/app_string.dart';
import 'package:pliers/core/utils/extentions.dart';
import 'package:pliers/features/home_feature/presentation/widgets/const_main_items_in_home.dart';

class ChicedPlumbingOrElecticity extends StatefulWidget {
  const ChicedPlumbingOrElecticity({
    super.key,
  });

  @override
  State<ChicedPlumbingOrElecticity> createState() =>
      _ChicedPlumbingOrElecticityState();
}

class _ChicedPlumbingOrElecticityState
    extends State<ChicedPlumbingOrElecticity> {
  bool? isChicked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ConstMainItems(
          // isChicked: isChicked!,
          colorText: isChicked == true
              ? const Color.fromRGBO(0, 28, 43, 0.4)
              : AppColors.kChineseYellow,
          colorPorder:
              isChicked == true ? Colors.transparent : AppColors.kChineseYellow,
          iconImage: AppImages.electricity,
          onTap: () {
            if (isChicked == true) {
              setState(() {
                isChicked = !isChicked!;
              });
            }
          },
          topPositionIcon: -40.w,
          nameAr: 'كهرباء',
          nameEn: 'Electricity',
        ),
        23.w.pw,
        ConstMainItems(
          colorText: isChicked == false
              ? const Color.fromRGBO(0, 28, 43, 0.4)
              : AppColors.kChineseYellow,
          colorPorder: isChicked == false
              ? Colors.transparent
              : AppColors.kChineseYellow,
          iconImage: AppImages.plumbing,
          onTap: () {
            if (isChicked == false) {
              setState(() {
                isChicked = !isChicked!;
              });
            }
          },
          topPositionIcon: -31.w,
          nameAr: AppString.plumbingAr,
          nameEn: AppString.plumbingEn,
        ),
      ],
    );
  }
}
