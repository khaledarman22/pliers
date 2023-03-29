import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pliers/core/models/onpording_data_and_model.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/core/utils/app_string.dart';
import 'package:pliers/core/utils/extentions.dart';
import 'package:pliers/core/widgets/const_elevated_button.dart';
import 'package:pliers/core/widgets/const_smooth_page_indecator.dart';
import 'package:pliers/features/auth_feature/presentation/view/login_view.dart';
import 'package:pliers/features/auth_feature/presentation/widgets/container_radial_gradiendt.dart';

import 'onpording_body.dart';

class OnpordingWidgets extends StatefulWidget {
  const OnpordingWidgets({super.key});

  @override
  State<OnpordingWidgets> createState() => _OnpordingWidgetsState();
}

class _OnpordingWidgetsState extends State<OnpordingWidgets> {
  final PageController pageController = PageController();
  @override
  void dispose() {
    pageController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ContainerRadialGradiendt(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: Column(
          children: [
            60.h.ph,
            Align(
              alignment: Alignment.topRight,
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginView(),
                      ));
                },
                child: Text(
                  AppString.skap,
                  style: context.textTheme.titleSmall
                      ?.copyWith(color: AppColors.kLotion),
                ),
              ),
            ),
            30.h.ph,
            SizedBox(
              height: 500.h,
              // width: 500,
              child: PageView.builder(
                controller: pageController,
                itemCount: onpording.length,
                itemBuilder: (context, index) =>
                    OnPordingBody(pageController: pageController, index: index),
              ),
            ),
            ConstSmoothPageIndicator(pageController: pageController, count: 3),
            42.h.ph,
            ConstElevatedButtom(
              width: context.width,
              textColor: AppColors.kAmericanBronze,
              topColor: AppColors.kChineseYellow,
              endColor: AppColors.kPhilippineYellow,
              onPressed: () {
                pageController.nextPage(
                    duration: const Duration(seconds: 1), curve: Curves.linear);
              },
            )
          ],
        ),
      ),
    );
  }
}
