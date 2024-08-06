import 'package:flutter/material.dart';
import 'package:oonzoo_assingment/screen/home_screen/widget/address_bar.dart';
import 'package:oonzoo_assingment/screen/home_screen/widget/banner_section.dart';
import 'package:oonzoo_assingment/screen/home_screen/widget/carousal_section.dart';
import 'package:oonzoo_assingment/screen/home_screen/widget/category_section.dart';
import 'package:oonzoo_assingment/screen/home_screen/widget/home_appbar.dart';
import 'package:oonzoo_assingment/screen/home_screen/widget/lagrge_banner.dart';
import 'package:oonzoo_assingment/screen/home_screen/widget/top_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            HomeAppBar(),
            Expanded(
                child: ListView(
              children: [
                AddressBar(),
                TopSection(),
                BannerSection(),
                CategorySection(),
                LargeBannerSection(
                  imgSrc:
                      "https://cdn.fcglcdn.com/brainbees/images/cattemplate/615_384_party_edit_160222_01.jpg",
                ),
                SizedBox(
                  height: 10,
                ),
                CarousalSection(),
                LargeBannerSection(
                  imgSrc:
                      "https://cdn.fcglcdn.com/brainbees/images/cattemplate/750_832_Summer_02_Default_170523_68.jpg",
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
