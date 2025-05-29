import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class TRouteMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    print(
      '..............................Middleware Called.................................',
    );
    final isAuthenticated = false;
    return isAuthenticated ? null : RouteSettings(name: route);
  }
}
