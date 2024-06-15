
import 'package:flutter_triad/core/resources/manager_sizes_util.dart';
import 'package:flutter_triad/features/main/presentation/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import '../../../../core/widgets/pop_cope_widget.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return willPopScope(
      child: GetBuilder<MainController>(
        builder: (controller) {
          return PersistentTabView(
            controller: controller.persistentTabController,
            backgroundColor: Colors.white,
            navBarBuilder: (navBarConfig) => Style14BottomNavBar(
              navBarConfig: navBarConfig,
            ),
            navBarHeight: ManagerHeight.h60,
            tabs: controller.bottomNavBarItems,
          );
        },
      ),
    );
  }
}
