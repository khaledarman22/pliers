import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/features/home_feature/presentation/cubit/home_cubit.dart';

class HomeWidgets extends StatelessWidget {
  const HomeWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        HomeCubit cubit = HomeCubit.get(context);
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            onTap: (value) {
              cubit.changeBottomNavBar(value);
            },
            unselectedLabelStyle:
                const TextStyle(color: Colors.white, fontSize: 14),
            fixedColor: AppColors.kPrimary,
            type: BottomNavigationBarType.fixed,
            currentIndex: cubit.currentIndex,
            items: cubit.listbottomItems,
          ),
          body: cubit.screens[cubit.currentIndex],
        );
      },
    );
  }
}
