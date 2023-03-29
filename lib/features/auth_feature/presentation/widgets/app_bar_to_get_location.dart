import 'package:flutter/material.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/core/utils/extentions.dart';

class AppBarGetLocation extends StatelessWidget {
  const AppBarGetLocation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.kPrimary,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      height: context.height * .2,
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
            child: Text('تحديد المكان',
                style: context.textTheme.titleLarge!
                    .copyWith(color: AppColors.kLotion)),
          ),
        ],
      ),
    );
  }
}
