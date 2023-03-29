import 'package:flutter/material.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/core/utils/extentions.dart';

class ConstTextFormField extends StatelessWidget {
  const ConstTextFormField({this.hintText = '', super.key});
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: context.textTheme.titleMedium!.copyWith(color: AppColors.kPrimary),
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: context.textTheme.titleSmall!
              .copyWith(color: AppColors.kMaastrichtBlue.withOpacity(.60))),
    );
  }
}
