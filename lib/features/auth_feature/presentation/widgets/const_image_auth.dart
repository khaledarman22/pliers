import 'package:flutter/material.dart';
import 'package:pliers/core/utils/extentions.dart';

AspectRatio constImageAuth(BuildContext context, image) {
  return AspectRatio(
    aspectRatio: context.height < 800 ? 2 : 1.3,
    child: Image.asset(image),
  );
}
