import 'package:flutter/material.dart';
import 'package:islami_app_c15_sun_4pm/core/constants/assets.dart';
import 'package:islami_app_c15_sun_4pm/modules/layout/quran/quran_view.dart';
import 'package:islami_app_c15_sun_4pm/modules/layout/radio/radio_view.dart';
import 'package:islami_app_c15_sun_4pm/modules/layout/tasbeh/tasbeh_view.dart';
import 'package:islami_app_c15_sun_4pm/modules/layout/time/time_view.dart';

import 'hadeth/hadeth_view.dart';

class LayoutView extends StatefulWidget {
  static const routeName = '/layout';

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int selectedIndex = 0;

  List<Widget> screens = [
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    TimeView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: selectedIndex == 0 ? Colors.black26 : Colors.transparent,
              ),
              child: ImageIcon(AssetImage(Assets.quranIcn)),
            ),
            label: 'Quran',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: selectedIndex == 1 ? Colors.black26 : Colors.transparent,
              ),
              child: ImageIcon(AssetImage(Assets.hadethIcn)),
            ),
            label: 'Hadeth',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: selectedIndex == 2 ? Colors.black26 : Colors.transparent,
              ),
              child: ImageIcon(AssetImage(Assets.sebhaIcn)),
            ),
            label: 'Tasbeh',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: selectedIndex == 3 ? Colors.black26 : Colors.transparent,
              ),
              child: ImageIcon(AssetImage(Assets.radioIcn)),
            ),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: selectedIndex == 4 ? Colors.black26 : Colors.transparent,
              ),
              child: ImageIcon(AssetImage(Assets.timeIcn)),
            ),
            label: 'Time',
          ),
        ],
      ),
    );
  }
}
