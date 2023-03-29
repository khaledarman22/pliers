import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/features/auth_feature/presentation/view/onpording_view.dart';

import 'container_radial_gradiendt.dart';

class SplashWidgets extends StatefulWidget {
  const SplashWidgets({super.key});

  @override
  State<SplashWidgets> createState() => _SplashWidgetsState();
}

class _SplashWidgetsState extends State<SplashWidgets> {
  Timer? timer;
  durationAndNavigator() {
    timer = Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const OnpordingView(),
          ));
    });
  }

  @override
  void initState() {
    durationAndNavigator();
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          ContainerRadialGradiendt(
            child: Text(
              'Logo',
              style: TextStyle(fontSize: 32, color: AppColors.kWhite),
            ),
          ),
        ],
      ),
    );
  }
}
