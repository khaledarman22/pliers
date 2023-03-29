import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/core/utils/app_images.dart';
import 'package:pliers/core/utils/app_string.dart';
import 'package:pliers/core/utils/extentions.dart';
import 'package:pliers/core/widgets/const_elevated_button.dart';
import 'package:pliers/features/auth_feature/presentation/widgets/const_text_form_otp.dart';
import 'package:pliers/features/auth_feature/presentation/widgets/personal_data_widgets.dart';
import 'const_image_auth.dart';

class VerificationWidgets extends StatelessWidget {
  const VerificationWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 40.w),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              96.h.ph,
              Text(
                'أدخل رمز التحقق',
                style: context.textTheme.titleLarge!.copyWith(
                  color: AppColors.kMaastrichtBlue,
                ),
              ),
              19.h.ph,
              constImageAuth(
                context,
                AppImages.verification,
              ),
              31.h.ph,
              Text(
                '${AppString.verifiction} 433443**** ',
                style: context.textTheme.titleSmall!.copyWith(
                  color: AppColors.kMaastrichtBlue.withOpacity(.6),
                ),
              ),
              31.h.ph,
              SizedBox(
                // color: AppColors.kMetallicSeaweed,
                width: 270.w,
                height: 55.h,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    textFieldOTP(true, false, context),
                    20.w.pw,
                    textFieldOTP(false, false, context),
                    20.w.pw,
                    textFieldOTP(false, false, context),
                    20.w.pw,
                    textFieldOTP(false, false, context),
                  ],
                ),
              ),
              31.h.ph,
              infoSendMassage(context),
              8.h.ph,
              Text(
                'يمكنك إعادة إرسال الرمز في 55 ث.',
                style: context.textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              31.h.ph,
              ConstElevatedButtom(
                width: context.width,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PersonalDataWidgets()));
                },
                text: AppString.login,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row infoSendMassage(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'لم تستلم الرمز ؟',
          style: context.textTheme.titleSmall!.copyWith(
            fontWeight: FontWeight.w400,
          ),
        ),
        InkWell(
            onTap: () {},
            child: Text(
              'إعادة الإرسال',
              style: context.textTheme.titleSmall!.copyWith(
                color: AppColors.kPrimary,
                fontWeight: FontWeight.w400,
              ),
            )),
      ],
    );
  }
}
