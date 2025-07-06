import 'package:flutter/material.dart';
import 'package:islami_app_c15_sun_4pm/core/constants/assets.dart';

import '../../../../core/constants/colors.dart';

class RecentlyItemWidget extends StatelessWidget {
  const RecentlyItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 285,
      height: 150,
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 2.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: ColorsPallete.primaryColor,
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Al-Anbiya", style: Theme.of(context).textTheme.titleLarge),
              Text("الأنبياء", style: Theme.of(context).textTheme.titleLarge),
              Text("Sura Name", style: Theme.of(context).textTheme.bodyMedium),
            ],
          ),
          Expanded(child: Image.asset(Assets.recentlyCardImg)),
        ],
      ),
    );
  }
}
