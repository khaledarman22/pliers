import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/core/utils/extentions.dart';
import 'package:pliers/core/widgets/const_elevated_button.dart';
import 'package:pliers/core/widgets/const_text_form_field.dart';

class BottomShet extends StatelessWidget {
  const BottomShet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List locations = [];
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        color: AppColors.kWhite,
        height: 300.h,
        width: context.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            15.h.ph,
            Container(
              height: 2,
              width: 38.w,
              color: const Color.fromRGBO(0, 28, 43, 0.7),
            ),
            32.h.ph,
            const ConstTextFormField(hintText: 'اسم العنوان'),
            20.h.ph,
            SizedBox(
              height: locations.isEmpty ? 0 : 35,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: locations.length,
                itemBuilder: (context, index) => Container(
                  margin: const EdgeInsetsDirectional.only(end: 8),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromRGBO(217, 217, 217, 0.45),
                  ),
                  alignment: Alignment.center,
                  height: 35,
                  child: Text(
                    'بيت الوالد',
                    style: context.textTheme.titleSmall!.copyWith(
                        color: AppColors.kMaastrichtBlue.withOpacity(.4),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            42.h.ph,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                ConstElevatedButtom(
                    text: 'حفظ', width: context.width * .42, onPressed: () {}),
                ConstElevatedButtom(
                    topColor: AppColors.kChineseYellow,
                    endColor: AppColors.kChineseYellow,
                    width: context.width * .42,
                    text: 'الغاء',
                    onPressed: () {}),
              ],
            )
          ],
        ),
      ),
    );
  }
}
