import 'package:flutter/material.dart';
import 'package:islami_app_c15_sun_4pm/core/constants/assets.dart';
import 'package:islami_app_c15_sun_4pm/core/constants/colors.dart';
import 'package:islami_app_c15_sun_4pm/modules/layout/quran/widgets/recently_sura_widget.dart';
import 'package:islami_app_c15_sun_4pm/modules/layout/quran/widgets/sura_list_widget.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.quranBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(Assets.headerLogo),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                cursorColor: ColorsPallete.primaryColor,
                decoration: InputDecoration(
                  hintText: "Sura Name",
                  hintStyle: Theme.of(context).textTheme.bodyLarge,
                  prefixIcon: ImageIcon(
                    AssetImage(Assets.quranIcn),
                    color: ColorsPallete.primaryColor,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: BorderSide(color: ColorsPallete.primaryColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: BorderSide(color: ColorsPallete.primaryColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: BorderSide(color: ColorsPallete.primaryColor),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0),
                    borderSide: BorderSide(color: ColorsPallete.primaryColor),
                  ),
                ),
              ),
            ),
            RecentlySuraWidget(),
            SuraListWidget(),
          ],
        ),
      ),
    );
  }
}
