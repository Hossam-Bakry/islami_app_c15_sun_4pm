import 'package:flutter/material.dart';
import 'package:islami_app_c15_sun_4pm/core/constants/theme_manager.dart';
import 'package:islami_app_c15_sun_4pm/modules/layout/layout_view.dart';
import 'package:islami_app_c15_sun_4pm/modules/layout/quran/quran_details_view.dart';

import 'modules/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeManager.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayoutView.routeName: (context) => const LayoutView(),
        QuranDetailsView.routeName: (context) => QuranDetailsView(),
      },
    );
  }
}
