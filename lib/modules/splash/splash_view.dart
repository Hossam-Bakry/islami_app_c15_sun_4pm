import 'package:flutter/material.dart';
import 'package:islami_app_c15_sun_4pm/core/constants/assets.dart';
import 'package:islami_app_c15_sun_4pm/modules/layout/layout_view.dart';

class SplashView extends StatefulWidget {
  static const routeName = '/splash';

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, LayoutView.routeName);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.splashBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(backgroundColor: Colors.transparent),
    );
  }
}
