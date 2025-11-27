import 'package:firstapp/common/image/bannerimg.dart';
import 'package:flutter/material.dart';

import '../../../constant/imageconstant.dart';
import '../homepagecard.dart';

class HomeBannerCard extends StatelessWidget {
  const HomeBannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 99, 13, 174),
        borderRadius: BorderRadius.circular(8), // equivalent to .rounded
      ),
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          //const TopLeftRightroundedimg(banner: ImageCons.banner1),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                HomeBannerRow(title: 'Courses', ontap: () {}),
                const ProductCardList(autoscroll: false),
                HomeBannerRow(title: '', ontap: () {}),
                const ProductCardList(autoscroll: false),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HomeBannerRow extends StatelessWidget {
  const HomeBannerRow({super.key, required this.title, required this.ontap});
  final String title;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600, // semiBold equivalent
            ),
          ),
          GestureDetector(
            onTap: ontap,
            child: Text("Show All", style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
