import 'package:get/get.dart';
import 'package:web_admin_panel/app.dart';
import 'package:web_admin_panel/routes/routes.dart';
import 'package:web_admin_panel/routes/routes_middleware.dart';

class TAppRoute {
  static final List<GetPage> pages = [
    GetPage(
      name: TRoutes.firstScreen,
      page: () => FirstScreen(),
      middlewares: [TRouteMiddleware()],
    ),
    GetPage(
      name: TRoutes.secondScreen,
      page: () => SecondScreen(),
      middlewares: [TRouteMiddleware()],
    ),
    GetPage(name: TRoutes.secondScreenWithUID, page: () => SecondScreen()),
  ];
}
