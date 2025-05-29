import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RouteObservers extends GetObserver {
  @override
  void didPop(Route<dynamic>? route, Route<dynamic>? previousRoute) {
    final sideBarController = Get.put(SideBarController());

    if (previousRoute != null) {
      for (var routeName in TRoutes.sideMenuItems) {
        if (previousRoute.settings.name == routeName) {
          sideBarController.activeItem.value = routeName;
        }
      }
    }
  }

  @override
  void didPush(Route<dynamic>? route, Route<dynamic>? previousRoute) {
    final sideBarController = Get.put(SideBarController());

    if (route != null) {
      for (var routeName in TRoutes.sideMenuItems) {
        if (route.settings.name == routeName) {
          sideBarController.activeItem.value = routeName;
        }
      }
    }
  }
}
