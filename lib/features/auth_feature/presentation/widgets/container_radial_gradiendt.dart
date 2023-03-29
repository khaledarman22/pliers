import 'package:flutter/material.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/core/utils/extentions.dart';

class ContainerRadialGradiendt extends StatelessWidget {
  const ContainerRadialGradiendt({
    super.key,
    required this.child,
    this.padding,
  });
  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: context.height,
        padding: padding,
        alignment: Alignment.center,
        // width: context.width,
        // height: context.height,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            radius: 1,
            colors: [
              AppColors.kPacificBlue,
              AppColors.kBlueGreen,
              AppColors.kMetallicSeaweed
            ],
            stops: [.09, 0.6, 0.9],
          ),
        ),
        child: child);
  }
}
