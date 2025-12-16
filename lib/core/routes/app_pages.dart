import 'package:get/get.dart';
import 'package:stock_trader/core/routes/app_routes.dart';
import 'package:stock_trader/views/splash/splash_view.dart';

class AppPages {
  static final pages = <GetPage>[
    GetPage(
      name: AppRoutes.splash,
      page: () => SplashView(),
    )
  ];
}