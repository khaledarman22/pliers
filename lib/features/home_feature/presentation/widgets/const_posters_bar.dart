import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pliers/core/utils/extentions.dart';
import 'package:pliers/core/widgets/const_smooth_page_indecator.dart';

class ConstPosterBar extends StatefulWidget {
  const ConstPosterBar({super.key});

  @override
  State<ConstPosterBar> createState() => ConstPosterBarState();
}

class ConstPosterBarState extends State<ConstPosterBar> {
  final PageController pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: 342.w,
        height: 134.h,
        color: Colors.amber,
        child: PageView.builder(
          controller: pageController,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(224, 224, 224, 0.25),
                      blurRadius: 20,
                      offset: Offset(0, 4),
                    ),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    stops: [0.0048, 0.6416, 0.9958],
                    colors: [
                      Color(0xFFDDEAED),
                      Color(0xFFF1F1F1),
                      Color(0xFFF1F1F1),
                    ],
                    transform: GradientRotation(269.44),
                  ),
                  image: DecorationImage(
                      fit: BoxFit.contain,
                      alignment: AlignmentDirectional.bottomEnd,
                      image: AssetImage(
                        'assets/images/poster1.png',
                      ))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 165,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('اختر الخدمات التي تناسبك',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: context.textTheme.titleSmall!.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 14.sp,
                              height: 1.7,
                              color: const Color(0xFFFAB100),
                              shadows: [
                                const Shadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.2),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            )),
                        Text(
                            'خياراتك لصيانة منزلك صارت متنوعة وتناسب احتياجاتك.',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: context.textTheme.titleSmall!.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              height: 1.5,
                              color: const Color.fromRGBO(0, 28, 43, 0.4),
                              shadows: [
                                const Shadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.2),
                                  blurRadius: 4,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  17.h.ph,
                  Padding(
                    padding: EdgeInsets.all(10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ConstSmoothPageIndicator(
                            pageController: pageController, count: 5),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
