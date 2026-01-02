import 'package:firstapp/LocalStorage/smallStorage.dart';
import 'package:firstapp/feature/screens/shop/account/accountController.dart';
import 'package:firstapp/feature/screens/shop/home/Controller/homeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    final GlobalKey<ScaffoldState> _homeScaffoldKey = GlobalKey<ScaffoldState>();
    final controller=Get.put(HomeController());
    final AccountController accountController=AccountController();
    SmallStorage smallStorage=SmallStorage.instance;

    return Scaffold(
      key: _homeScaffoldKey,
      bottomNavigationBar: const BottomNav(),
      appBar: homeAppBar(_homeScaffoldKey),
      drawer: MyDrawer(
        userName:controller.name.value,
        userEmail:controller.email.value,

        scaffoldKey:_homeScaffoldKey, controller: accountController,
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
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Part1(list: controller.list,),
                  ); // .paddingSymmetric() replacement
                case 2:
                  return const SizedBox(height: 10); // 10.heightBox replacement
                case 3:
                  return  Part2(list:controller.list,);
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
