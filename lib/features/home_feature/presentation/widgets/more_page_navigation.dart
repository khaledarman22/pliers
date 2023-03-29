import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/core/utils/app_images.dart';
import 'package:pliers/core/utils/extentions.dart';
import 'package:pliers/core/utils/text_style.dart';
import 'package:pliers/core/widgets/const_icon_button.dart';
import 'package:pliers/features/home_feature/presentation/cubit/home_cubit.dart';

class MorePageNavigation extends StatelessWidget {
  const MorePageNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        HomeCubit cubit = HomeCubit.get(context);
        return Stack(children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                color: AppColors.kWhite,
              ),
              width: context.width,
              height: context.height * .6,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        AppImages.edit,
                        width: 20.w,
                        height: 20.h,
                      ),
                      10.w.pw,
                      Text(
                        'Abdelaziz2145',
                        style: context.textTheme.titleSmall!.copyWith(
                          fontSize: 16.sp,
                          color: AppColors.kMaastrichtBlue.withOpacity(.8),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 200,
                    height: 200,
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              // padding: EdgeInsets.symmetric(horizontal: 25.w),
              color: AppColors.kPrimary,
              alignment: Alignment.center,
              height: context.height * .27,
              child: Stack(
                clipBehavior: Clip.none,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: AlignmentDirectional(1, -.3),
                    child: Padding(
                      padding:
                          EdgeInsets.only(right: 20, left: 20, bottom: 20.h),
                      child: Directionality(
                        textDirection: cubit.selectedLanguage == 'ع'
                            ? TextDirection.rtl
                            : TextDirection.ltr,
                        child: ConstIconButton(
                          onTap: () {},
                          visible: false,

                          icon: DropdownButton(
                              icon: const Visibility(
                                  visible: false,
                                  child: Icon(Icons.arrow_downward)),
                              underline: const SizedBox(),
                              style: context.textTheme.titleMedium!.copyWith(
                                color: AppColors.kPrimary,
                              ),
                              alignment: Alignment.center,
                              onChanged: (value) {
                                cubit.changeBottomLanguage(value!);
                              },
                              value: cubit.selectedLanguage,
                              items: cubit.languageList
                                  .map((lang) => DropdownMenuItem(
                                      alignment: Alignment(0, 0),
                                      value: lang,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.keyboard_arrow_down,
                                            color: AppColors.kWhite,
                                            size: 20.sp,
                                          ),
                                          Text(
                                            lang,
                                            textAlign: TextAlign.center,
                                            style: context
                                                .textTheme.titleMedium!
                                                .copyWith(
                                              fontFamily: 'Calibri',
                                              fontWeight: FontWeight.w700,
                                              height:
                                                  cubit.selectedLanguage == 'ع'
                                                      ? .2
                                                      : 1,
                                              color: AppColors.kWhite,
                                            ),
                                          ),
                                        ],
                                      )))
                                  .toList()),
                          // icon: Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: [Text('ed'), Icon(Icons.arrow_back)],
                          // ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, -.3),
                    child: Padding(
                      padding:
                          EdgeInsets.only(right: 20, left: 20, bottom: 20.h),
                      child: Text('المزيد',
                          style: context.textTheme.titleLarge!
                              .copyWith(color: AppColors.kLotion)),
                    ),
                  ),
                  Positioned.fill(
                    bottom: -1,
                    child: Align(
                        alignment: AlignmentDirectional.bottomEnd,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.kWhite,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(30.r),
                            ),
                          ),
                          width: context.width,
                          height: 50.h,
                        )),
                  ),
                  Positioned.fill(
                    child: manIconProfile(),
                  ),
                ],
              ),
            ),
          ),
        ]);
      },
    );
  }

  Align manIconProfile() {
    return Align(
        alignment: AlignmentDirectional.bottomCenter,
        child: SizedBox(
          width: 100.h,
          height: 100.h,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.kChineseYellow),
                    color: AppColors.kWhite,
                    borderRadius: BorderRadius.all(
                      Radius.circular(100),
                    ),
                  ),
                  width: 100.h,
                  height: 100.h,
                ),
              ),
              Positioned(
                top: -6,
                width: 100.h,
                child: Align(
                  // alignment: Alignment(0, -25),
                  child: Image.asset(
                    'assets/images/man2.png',
                    width: 100.w,
                    height: 95.h,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
