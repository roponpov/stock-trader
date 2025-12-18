import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/routes/app_pages.dart';
import 'core/routes/app_routes.dart';
import 'core/themes/app_theme.dart';
import 'core/translations/app_translations.dart';
import 'views/not_found/not_found_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stock Trader',
      initialRoute: AppRoutes.splash,
      getPages: AppPages.pages,
      // initialBinding: ,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      translations: AppTranslations(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),

      defaultTransition: Transition.cupertino,
      transitionDuration: const Duration(milliseconds: 250),

      unknownRoute: GetPage(
        name: AppRoutes.notFound,
        page: () => const NotFoundView(),
      ),
    );
  }
}
