import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/core/utils/extentions.dart';
import 'package:pliers/features/home_feature/presentation/widgets/const_customer_opinion.dart';
import 'package:pliers/features/home_feature/presentation/widgets/const_show_bottom_sheet_rating.dart';

class AlertsWidets extends StatelessWidget {
  const AlertsWidets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              height: context.height * .2,
              color: AppColors.kPrimary,
              child: Stack(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          color: AppColors.kLotion,
                          icon: const Icon(
                            Icons.arrow_back,
                          ))),
                  Align(
                    alignment: AlignmentDirectional.center,
                    child: Text('التنبيهات',
                        style: context.textTheme.titleLarge!
                            .copyWith(color: AppColors.kLotion)),
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
                  height: context.height * .85,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                      // color: AppColors.kWhite,
                      color: AppColors.kWhite),
                  child: SizedBox.expand(
                    child: Column(
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: 32.h,
                        ),
                        Row(
                          children: [
                            Text(
                              'اليوم',
                              style: context.textTheme.titleSmall!
                                  .copyWith(fontSize: 16.sp),
                            ),
                          ],
                        ),
                        16.h.ph,
                        Expanded(
                            child: ListView.separated(
                          padding: EdgeInsets.zero,
                          cacheExtent: 2,
                          primary: false,
                          itemCount: 5,
                          separatorBuilder: (context, index) {
                            return 16.h.ph;
                          },
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Scaffold.of(context).showBottomSheet((context) {
                                  return const ConstShowBottomSheetRating();
                                });
                              },
                              child: const ConstVerify(
                                massage: 'ارسلنا تقييمك علي الخدمة',
                              ),
                            );
                          },
                        ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
