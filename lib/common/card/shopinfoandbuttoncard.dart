import 'package:flutter/material.dart';

import '../../constant/imageconstant.dart';
import '../button/customelevatedbutton.dart';
import '../icon/codicon.dart';
import 'widget/productprice.dart';
import 'widget/ratingwithtotalrated.dart';
import 'widget/shopinfo.dart';

class ShopNameAddressPriceButtons extends StatelessWidget {
  const ShopNameAddressPriceButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 0.1),
        borderRadius: BorderRadius.circular(4), // roundedSM equivalent
      ),
      padding: const EdgeInsets.all(4), // p4 equivalent
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10), // 10.heightBox replacement
            Row(
              children: [
                const Image(
                  image: AssetImage(ImageCons.watch1),
                  height: 50,
                  width: 50,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Instructor Name",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const CODIcon(title: 'verified', colors: Colors.blueAccent,),
                    const RatingwithTotalrates(rate: 4, totalrated: "200"),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20), // 20.heightBox replacement
            const ShopInfo(),
            const Divider(thickness: 0.5),
            const ProducPriceHorizontl(price: '200', reduced: false),
            const SizedBox(height: 10), // 10.heightBox replacement
            Row(
              children: [
                Flexible(
                  child: SizedBox(
                    height: 40,
                    child: CustomElevatedButton(
                      title: "Add to Cart",
                      textcolor: Colors.black, // Vx.black replacement
                      onPressed: () {},
                      backgroundColor: const Color(
                        0xFFEEEEEE,
                      ), // Vx.gray200 replacement
                    ),
                  ),
                ),
                const SizedBox(width: 20), // 20.widthBox replacement
                Flexible(
                  child: SizedBox(
                    height: 40,
                    child: CustomElevatedButton(
                      title: "Buy Now",
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10), // 10.heightBox replacement
          ],
        ),
      ),
    );
  }
}
