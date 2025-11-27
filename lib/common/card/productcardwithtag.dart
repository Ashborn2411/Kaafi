import 'package:firstapp/common/image/productimgwithtag.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../feature/screens/shop/productdetail/productdetailsscreen.dart';
import 'cardlogobanner.dart';
import 'widget/productprice.dart';
import 'widget/ratingwithtotalrated.dart';

class ProductCardWithTag extends StatelessWidget {
  const ProductCardWithTag({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetails()),
      child: Container(
        width: 220.0,
        height: 400.0,
        decoration: BoxDecoration(
          color: Colors.white, // Vx.white replacement
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductimgWithTag(height: 200, width: 220),
            const SizedBox(height: 5.0),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: MultilineTitlewithverification(
                title: 'hello its me',
                size: 14.0,
                isboled: false,
              ),
            ),
            const SizedBox(height: 10.0),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: ProducPrice(
                price: '5000',
                reduced: true,
                newprice: '1000',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "In Stock",
                    style: TextStyle(color: Colors.grey[500], fontSize: 12.0),
                  ),
                  const SizedBox(width: 5.0),
                  const RatingwithTotalrates(rate: 4, totalrated: '20'),
                ],
              ),
            ),
            const SizedBox(height: 5.0),
          ],
        ),
      ), // .onTap() replacement
    );
  }
}
