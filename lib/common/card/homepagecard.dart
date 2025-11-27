import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/imageconstant.dart';
import '../button/showbutton.dart';
import 'productcard.dart';

class HomePageCard extends StatelessWidget {
  const HomePageCard({
    super.key,
    this.title = '',
    this.subtitle = '',
    this.onTap,
    this.color = Colors.white,
    this.textcolor = Colors.black,
    this.autoscroll = false,
    this.showall = true,
    this.applyrating = false,
    this.isSemibold = false,
  });

  final String title;
  final String subtitle;
  final VoidCallback? onTap;
  final Color color;
  final Color textcolor;
  final bool autoscroll;
  final bool showall;
  final bool applyrating;
  final bool isSemibold;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      padding: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: textcolor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: textcolor,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              if (showall) ShowAllButton(ontap: onTap),
            ],
          ),
          const SizedBox(height: 10), // 10.heightBox replacement
          ProductCardList(
            autoscroll: autoscroll,
            isSemibold: isSemibold,
            applyrating: applyrating,
          ),
        ],
      ),
    );
  }
}

class ProductCardList extends StatelessWidget {
  const ProductCardList({
    super.key,
    required this.autoscroll,
    this.isSemibold = false,
    this.applyrating = false,
  });
  final bool autoscroll;
  final bool isSemibold;
  final bool applyrating;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ScrollControllerManager());
    controller.autoscroll.value = autoscroll;
    return SizedBox(
      height: 180,
      child: ListView.separated(
        shrinkWrap: true,
        controller: controller._scrollController,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        scrollDirection: Axis.horizontal,
        cacheExtent: 10,
        itemBuilder: (context, index) => ProductCard(
          applyrating: applyrating,
          isSemibold: isSemibold,
          title: 'hello',
          subtitle: 'bye',
          amount: '20',
          reduced: true,
          newprice: '1000',
          price: '1700',
          imgurl: ImageCons.watch1,
          isnetworkimg: false,
        ),
        separatorBuilder: (_, __) =>
            const SizedBox(width: 10), // 10.widthBox replacement
        itemCount: 10,
      ),
    );
  }
}

class ScrollControllerManager extends GetxController {
  static ScrollControllerManager get instance => Get.find();
  final ScrollController _scrollController = ScrollController();
  final RxBool autoscroll = false.obs;

  double get scrollPosition => _scrollController.position.pixels;

  void loopToEndAndBack(
    Duration scrollDuration,
    Duration reverseDuration,
  ) async {
    await Future.delayed(const Duration(milliseconds: 500));

    if (autoscroll.value) {
      while (true) {
        final double maxScrollExtent =
            _scrollController.position.maxScrollExtent;
        if (maxScrollExtent > 0) {
          await _scrollController.animateTo(
            maxScrollExtent,
            duration: scrollDuration,
            curve: Curves.linear,
          );
          await _scrollController.animateTo(
            0.0,
            duration: reverseDuration,
            curve: Curves.easeIn,
          );
        }
      }
    }
  }

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(milliseconds: 500), () {
      loopToEndAndBack(
        const Duration(seconds: 20),
        const Duration(seconds: 20),
      );
    });
  }

  @override
  void onClose() {
    _scrollController.dispose();
    super.onClose();
  }
}
