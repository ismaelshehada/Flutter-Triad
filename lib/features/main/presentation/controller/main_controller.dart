import 'package:flutter/material.dart';
import 'package:flutter_triad/core/resources/manager_colors.dart';
import 'package:flutter_triad/features/home/presentation/view/screen/home_view.dart';
import 'package:flutter_triad/features/profile/presentation/view/screen/profile_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

import '../../../../core/resources/manager_fonts.dart';
import '../../../../core/resources/manager_sizes_util.dart';
import '../../../../core/resources/manager_strings.dart';
import '../../../../core/resources/manager_styles.dart';

class MainController extends GetxController {
  PersistentTabController persistentTabController =
      PersistentTabController(initialIndex: 0);

  Color color = ManagerColors.black;
  List<Widget> screens = [
    HomeView(),
    Container(),
    ProfileView(),
  ];

  List<PersistentTabConfig> bottomNavBarItems = [
    PersistentTabConfig(
      screen: HomeView(),
      item: ItemConfig(
        icon: Icon(Icons.home),
        title: ManagerStrings.home,
        activeForegroundColor: ManagerColors.primaryColor,
        textStyle: getBoldTextStyle(
            fontSize: ManagerFontSize.s10, color: ManagerColors.primaryColor),
        iconSize: ManagerRadius.r26,
      ),
    ),
    PersistentTabConfig(
      screen: Container(),
      item: ItemConfig(
        icon: Icon(Icons.search),
        title: ManagerStrings.search,
        activeForegroundColor: ManagerColors.primaryColor,
        textStyle: getBoldTextStyle(
            fontSize: ManagerFontSize.s10, color: ManagerColors.primaryColor),
        iconSize: ManagerRadius.r26,
      ),
    ),
    PersistentTabConfig(
      screen: ProfileView(),
      item: ItemConfig(
        icon: Icon(Icons.person_off),
        title: ManagerStrings.profile,
        activeForegroundColor: ManagerColors.primaryColor,
        textStyle: getBoldTextStyle(
            fontSize: ManagerFontSize.s10, color: ManagerColors.primaryColor),
        iconSize: ManagerRadius.r26,
      ),
    ),

  ];

  void navigate(int index) {
    persistentTabController.jumpToTab(index);
  }
}

void changeMainCurrentIndex(int index) {
  try {
    Get.find<MainController>().navigate(index);
    debugPrint("The Main Controller Index Changed");
  } catch (e) {
    debugPrint(e.toString());
  }
}
