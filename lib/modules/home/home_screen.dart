// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

// Project imports:
import '../../shared/shared.dart';
import 'home.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Obx(() => _buildWidget()),
    );
  }

  Widget _buildWidget() {
    return Scaffold(
      body: Center(
        child: _buildContent(controller.currentTab.value),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: [
        _buildNavigationBarItem(
          "Explore",
          MainTabs.explore == controller.currentTab.value
              ? "icon_home_activited.svg"
              : "icon_home.svg",
        ),
        _buildNavigationBarItem(
          "Top Pick",
          MainTabs.topPick == controller.currentTab.value
              ? "icon_discover_activited.svg"
              : "icon_discover.svg",
        ),
        _buildNavigationBarItem(
          "Match",
          "icon_resource.svg",
        ),
        _buildNavigationBarItem(
          "History",
          MainTabs.history == controller.currentTab.value
              ? "icon_inbox_activited.svg"
              : "icon_inbox.svg",
        ),
        _buildNavigationBarItem(
          "Account",
          MainTabs.account == controller.currentTab.value
              ? "icon_me_activited.svg"
              : "icon_me.svg",
        )
      ],
      type: BottomNavigationBarType.fixed,
      unselectedItemColor: ColorConstants.black,
      currentIndex: controller.getCurrentIndex(controller.currentTab.value),
      selectedItemColor: ColorConstants.black,
      selectedLabelStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      onTap: (index) => controller.switchTab(index),
    );
  }

  Widget _buildContent(MainTabs tab) {
    switch (tab) {
      case MainTabs.explore:
        return controller.mainTab;
      case MainTabs.topPick:
        return controller.discoverTab;
      case MainTabs.match:
        return controller.resourceTab;
      case MainTabs.history:
        return controller.inboxTab;
      case MainTabs.account:
        return controller.meTab;
      default:
        return controller.mainTab;
    }
  }

  BottomNavigationBarItem _buildNavigationBarItem(String label, String svg) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset('assets/svgs/$svg'),
      label: label,
    );
  }
}
