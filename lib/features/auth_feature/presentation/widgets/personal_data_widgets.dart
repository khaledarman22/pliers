import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/core/utils/extentions.dart';
import 'package:pliers/core/widgets/const_elevated_button.dart';
import 'package:pliers/core/widgets/const_text_form_field.dart';
import 'package:pliers/features/auth_feature/presentation/view/get_location_view.dart';

class PersonalDataWidgets extends StatelessWidget {
  const PersonalDataWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.w),
          child: Column(
            children: [
              96.h.ph,
              Text(
                'البيانات الشخصيه ',
                style: context.textTheme.titleLarge!.copyWith(
                  color: AppColors.kMaastrichtBlue,
                ),
              ),
              70.h.ph,
              const ConstTextFormField(
                hintText: 'الاسم الاول ',
              ),
              16.h.ph,
              const ConstTextFormField(
                hintText: 'الاسم الثانى',
              ),
              16.h.ph,
              const ConstTextFormField(hintText: 'البريد الالكترونى'),
              32.h.ph,
              Align(
                alignment: Alignment.centerRight,
                child: RichText(
                  text: TextSpan(
                    text: 'التسجيل يعنى قبولك ',
                    style: context.textTheme.titleSmall!
                        .copyWith(fontSize: 12, fontWeight: FontWeight.w400),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'الشروط والاحكام ',
                        style: context.textTheme.titleSmall!.copyWith(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              13.h.ph,
              ConstElevatedButtom(
                width: context.width,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GetLocationView(),
                      ));
                },
                text: 'تاكيد',
              )
            ],
          ),
        ),
      ),
    );
  }
}
