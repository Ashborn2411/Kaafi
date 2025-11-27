import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../constant/imageconstant.dart';
import '../shopcard.dart';

class ShopCardList extends StatelessWidget {
  const ShopCardList({
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
    final controller = Get.put(ScrollControllerManager2());
    controller.autoscroll.value = autoscroll;

    return SizedBox(
      height: 160,
      child: ListView.separated(
        shrinkWrap: true,
        controller: controller._scrollController,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        scrollDirection: Axis.horizontal,
        cacheExtent: 10,
        itemBuilder: (context, index) => const ShopCard(
          isnetworkimg: false,
          imgurl: ImageCons.logo,
          title: "halkjajdhfasdj",
        ),
        separatorBuilder: (_, __) => const SizedBox(width: 10),
        itemCount: 10,
      ),
    );
  }
}

class ScrollControllerManager2 extends GetxController {
  static ScrollControllerManager2 get instance => Get.find();
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
