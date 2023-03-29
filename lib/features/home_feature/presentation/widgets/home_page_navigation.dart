import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/core/utils/app_images.dart';
import 'package:pliers/core/utils/app_string.dart';
import 'package:pliers/core/utils/extentions.dart';
import 'package:pliers/core/widgets/const_icon_button.dart';
import 'package:pliers/features/auth_feature/presentation/view/get_location_view.dart';
import 'package:pliers/features/home_feature/presentation/widgets/alerts_widgets.dart';
import 'package:pliers/features/home_feature/presentation/widgets/cliced_plumbing_or_electicity.dart';
import 'package:pliers/features/home_feature/presentation/widgets/const_posters_bar.dart';

class Homepagenavigation extends StatelessWidget {
  const Homepagenavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topCenter,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            height: context.height * .4,
            color: AppColors.kPrimary,
            alignment: const Alignment(0, -.55),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    ConstIconButton(
                        // visible: true,
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => GetLocationView(),
                          ));
                        },
                        icon: Icon(
                          Icons.location_on_outlined,
                          size: 20.w,
                          color: AppColors.kWhite,
                        )),
                    8.w.pw,
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppString.serveyouin,
                          style: context.textTheme.titleMedium!
                              .copyWith(color: AppColors.kLotion),
                        ),
                        Text(
                          '9957 Kassandra Gardens',
                          style: context.textTheme.titleSmall!.copyWith(
                            fontWeight: FontWeight.w400,
                            color: AppColors.kLotion.withOpacity(.8),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                ConstIconButton(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const AlertsWidets(),
                    ));
                  },
                  visible: true,
                  icon: Icon(
                    Icons.notifications_none,
                    size: 20.w,
                    color: AppColors.kWhite,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: const Alignment(0, 1),
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(30),
              ),
              child: Container(
                height: context.height * .68,
                decoration: const BoxDecoration(
                  color: AppColors.kWhite,
                ),
                width: context.width,
                child: Column(
                  children: [
                    110.h.ph,
                    Text(
                      AppString.whatserve,
                      style: context.textTheme.bodySmall,
                    ),
                    40.h.ph,
                    const ChicedPlumbingOrElecticity()
                  ],
                ),
              ),
            ),
          ),
        ),
        const Positioned.fill(
          child: Align(
            alignment: Alignment(-0, -.55),
            child: ConstPosterBar(),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 35),
              width: context.width,
              height: 90.h,
              color: AppColors.kBrightGray,
              child: Row(
                children: [
                  SizedBox(
                    width: 37.w,
                    height: 37.h,
                    child: SvgPicture.asset(
                      AppImages.edit,
                    ),
                  ),
                  15.w.pw,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppString.orderinwhatsapp,
                          style: context.textTheme.titleSmall!.copyWith(
                            fontSize: 16.sp,
                            color: AppColors.kAmericanGreen,
                          ),
                          overflow: TextOverflow.ellipsis),
                      Text(AppString.sendyourproplem,
                          style: context.textTheme.titleSmall!.copyWith(
                            fontSize: 12.sp,
                            color: AppColors.kMaastrichtBlue.withOpacity(.6),
                          ),
                          overflow: TextOverflow.ellipsis),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
