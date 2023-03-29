import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pliers/core/utils/app_colors.dart';
import 'package:pliers/features/home_feature/presentation/widgets/home_page_navigation.dart';
import 'package:pliers/features/home_feature/presentation/widgets/more_page_navigation.dart';

import '../widgets/const_icon_button_bar.dart';
// import 'package:flutter_map/flutter_map.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());
  bool? isChicked = false;
  static HomeCubit get(context) => BlocProvider.of(context);
  List<String> languageList = ['en', 'ع'];
  String selectedLanguage = 'ع';

  int currentIndex = 0;

  List<BottomNavigationBarItem> listbottomItems = [
    constItemBttomNavigationBar(
        label: 'الرئيسية', imageActiveIcon: 'assets/images/icon-home.svg'),
    constItemBttomNavigationBar(
        label: 'طلباتي', imageActiveIcon: 'assets/images/icon-bag.svg'),
    constItemBttomNavigationBar(
        label: 'المزيد', imageActiveIcon: 'assets/images/icon-more-circle.svg'),
  ];

  List<Widget> screens = [
    const Homepagenavigation(),
    Container(
      width: 200,
      height: 200,
      color: AppColors.kAmericanBronze,
    ),
    const MorePageNavigation()
  ];

  Future<void> changeBottomNavBar(int index) async {
    emit(HomeInitial());
    currentIndex = index;
    emit(BottomNavState());
  }

  Future<void> changeBottomLanguage(String value) async {
    emit(HomeInitial());
    selectedLanguage = value;
    emit(BottomLanguageState());
  }
}
