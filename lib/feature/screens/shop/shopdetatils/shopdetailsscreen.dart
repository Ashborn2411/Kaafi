import 'package:firstapp/feature/screens/shop/home/widgets/appbar/widget/searchbar.dart'
    show RoundedSearchBar;
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import '../../../../common/card/cardlogobanner.dart';
import '../../../../common/card/productcardwithtag.dart';
import '../../../../navigation.dart';
import 'widget/header.dart';

class ShopDetails extends StatelessWidget {
  const ShopDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5), // Vx.gray100 replacement
      bottomNavigationBar: const BottomNav(),
      appBar: AppBar(
        surfaceTintColor: Colors.white, // Vx.white replacement
        title: const RoundedSearchBar(),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.share))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CardLogoBaner(title: "hello"),
            ), // .paddingSymmetric() replacement
            Row(
              children: [
                SizedBox(
                  width: w,
                  child: StickyHeader(
                    header: CustomHeader(sort: () {}, filter: () {}),
                    content: Container(
                      color: const Color(0xFFF5F5F5), // gray100 equivalent
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              mainAxisExtent: 320,
                            ),
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return const ProductCardWithTag();
                        },
                      ),
                    ), // .box.gray100.make() replacement
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
