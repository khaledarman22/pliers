import 'package:flutter/material.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/core/utils/app_string.dart';
import 'package:pliers/core/utils/extentions.dart';

class ConstLineOr extends StatelessWidget {
  const ConstLineOr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: Divider(
          color: AppColors.kCoolGrey.withOpacity(.2),
          thickness: 1,

          // height: 50,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(21.0),
        child: Text(
          AppString.or,
          style: context.textTheme.titleSmall!
              .copyWith(color: AppColors.kCoolGrey),
        ),
      ),
      Expanded(
        child: Divider(
          // height: 53,
          // endIndent: 1,
          thickness: 1,
          // indent: 1,
          color: AppColors.kCoolGrey.withOpacity(.2),
          // height: 50,
        ),
      ),
    ]);
  }
}
