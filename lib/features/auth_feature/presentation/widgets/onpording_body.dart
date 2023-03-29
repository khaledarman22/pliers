import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pliers/core/models/onpording_data_and_model.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/core/utils/app_string.dart';
import 'package:pliers/core/utils/extentions.dart';
import 'package:pliers/core/widgets/const_elevated_button.dart';
import 'package:pliers/core/widgets/const_smooth_page_indecator.dart';
import 'package:pliers/features/auth_feature/presentation/view/login_view.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'const_image_auth.dart';

class OnPordingBody extends StatelessWidget {
  const OnPordingBody({
    super.key,
    required this.pageController,
    required this.index,
  });
  final PageController pageController;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        constImageAuth(context, onpording[index].image.toString()),
        20.h.ph,
        Text(
          textAlign: TextAlign.center,
          onpording[index].title,
          style: context.textTheme.titleLarge,
        ),
        24.h.ph,
        Text(
          textAlign: TextAlign.center,
          onpording[index].body,
          style: context.textTheme.titleMedium?.copyWith(
            color: AppColors.kWhite,
            fontWeight: FontWeight.w400,
          ),
        ),
        50.h.ph,
      ],
    );
  }
}
