import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/core/utils/app_images.dart';
import 'package:pliers/core/utils/app_string.dart';
import 'package:pliers/core/utils/extentions.dart';
import 'package:pliers/core/widgets/const_elevated_button.dart';
import 'package:pliers/core/widgets/const_text_form_field.dart';
import 'package:pliers/features/auth_feature/presentation/view/verification_view.dart';
import 'package:pliers/features/auth_feature/presentation/widgets/const_image_auth.dart';
import 'package:pliers/features/auth_feature/presentation/widgets/const_line_or.dart';
import 'package:pliers/features/auth_feature/presentation/widgets/const_login_with_google.dart';

class LoginWidets extends StatelessWidget {
  const LoginWidets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              children: [
                96.h.ph,
                Text(
                  AppString.hello,
                  style: context.textTheme.titleLarge!.copyWith(
                    color: AppColors.kMaastrichtBlue,
                  ),
                ),
                19.h.ph,
                constImageAuth(
                  context,
                  AppImages.login,
                ),
                31.h.ph,
                const ConstTextFormField(
                  hintText: AppString.phone,
                ),
                32.h.ph,
                ConstElevatedButtom(
                  width: context.width,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VerificationView()));
                  },
                  text: AppString.login,
                ),
                9.h.ph,
                const ConstLineOr(),
                5.h.ph,
                const ConstLoginWithGoogle()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
