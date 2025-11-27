import 'package:flutter/material.dart';

import '../../../../common/card/banner/bannercarousel.dart' show BannerCarousel;
import '../../../../constant/imageconstant.dart';
import '../../../../main.dart';
import '../../../../navigation.dart';
import 'widgets/appbar/appbar.dart';
import 'widgets/bodypart/part1.dart';
import 'widgets/bodypart/part2.dart';
import 'widgets/drawer/drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: homeScaffoldKey,
      bottomNavigationBar: const BottomNav(),
      appBar: homeAppBar(),
      drawer: MyDrawer(
        userName: "Joy",
        userEmail: "TanjimJOy7@gmail.com",
        scaffoldKey: homeScaffoldKey,
      ),
      body: CustomScrollView(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shrinkWrap: true,
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              switch (index) {
                case 0:
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: BannerCarousel(
                      height: 200,
                      imagePaths: [
                        ImageCons.banner1,
                        ImageCons.banner1,
                        ImageCons.banner1,
                      ],
                    ),
                  ); // .paddingSymmetric() replacement
                case 1:
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Part1(),
                  ); // .paddingSymmetric() replacement
                case 2:
                  return const SizedBox(height: 10); // 10.heightBox replacement
                case 3:
                  return const Part2();
                default:
                  return Container();
              }
            }, childCount: 4),
          ),
        ],
      ),
    );
  }
}
