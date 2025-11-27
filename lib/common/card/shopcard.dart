import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../feature/screens/shop/shopdetatils/shopdetailsscreen.dart';
import 'widget/productsubtitle.dart';
import 'widget/ratingwithtotalrated.dart';
import 'widget/shoptitlewithverification.dart';

class ShopCard extends StatelessWidget {
  const ShopCard({
    super.key,
    required this.isnetworkimg,
    this.imgurl = '',
    this.title = '',
    this.subtitle = '',
    this.totalrated = '20k',
    this.rate = 1,
    this.isverified = true,
  });
  final bool isnetworkimg;
  final String imgurl;
  final String title;
  final String subtitle;
  final String totalrated;
  final double rate;
  final bool isverified;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const ShopDetails()),
      child: Container(
        width: 110,
        decoration: BoxDecoration(
          color: Colors.white, // Vx.white replacement
          borderRadius: BorderRadius.circular(4), // roundedSM equivalent
        ),
        padding: const EdgeInsets.all(4), // p4 equivalent
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (isnetworkimg)
                  ? Image(image: NetworkImage(imgurl))
                  : Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      height: 100,
                      width: 100,
                      child: Image(image: AssetImage(imgurl)),
                    ),
              if (title != '')
                ShoptitlewithVerification(
                  title: title,
                  isverified: isverified,
                  isSemibold: false,
                ),
              if (subtitle != '') ProductSubtitle(title: subtitle),
              if (subtitle != '')
                const SizedBox(height: 5), // 5.heightBox replacement
              if (subtitle == '') const Spacer(),
              RatingwithTotalrates(
                rate: rate,
                totalrated: totalrated,
                itemsize: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
