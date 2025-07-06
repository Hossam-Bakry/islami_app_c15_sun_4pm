import 'package:flutter/material.dart';
import 'package:islami_app_c15_sun_4pm/models/sura_data_model.dart';
import 'package:islami_app_c15_sun_4pm/modules/layout/quran/quran_details_view.dart';

import '../../../../core/constants/assets.dart';

class SuraListItem extends StatelessWidget {
  final SuraDataModel suraDataModel;

  const SuraListItem({super.key, required this.suraDataModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        /// navigate to sura details view
        Navigator.pushNamed(
          context,
          QuranDetailsView.routeName,
          arguments: suraDataModel,
        );
      },
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.suraNumberIcn),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: Text(
                suraDataModel.suraID,
                style: Theme.of(
                  context,
                ).textTheme.bodyLarge?.copyWith(color: Colors.white),
              ),
            ),
          ),
          SizedBox(width: 25),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                suraDataModel.suraNameEN,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium!.copyWith(color: Colors.white),
              ),
              Text(
                "${suraDataModel.suraVersesNumber} Verses",
                style: Theme.of(
                  context,
                ).textTheme.bodyMedium!.copyWith(color: Colors.white),
              ),
            ],
          ),
          Spacer(),
          Text(
            suraDataModel.suraNameAR,
            style: Theme.of(
              context,
            ).textTheme.titleMedium!.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
