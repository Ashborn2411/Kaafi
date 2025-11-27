import 'package:flutter/material.dart';

import '../../../../common/card/banner/bannercarousel.dart';
import '../../../../common/card/productcardwithtag.dart';
import '../../../../common/card/shopinfoandbuttoncard.dart'
    show ShopNameAddressPriceButtons;
import '../../../../constant/imageconstant.dart';
import '../../../../constant/stringconstant.dart';
import '../../../../navigation.dart';
import '../home/widgets/appbar/widget/searchbar.dart';
import 'widgets/titleandcollection.dart';
import 'widgets/variants.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: const BottomNav(),
      appBar: AppBar(
        surfaceTintColor: Colors.white, // Vx.white replacement
        title: const RoundedSearchBar(title: "Search Products"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border_outlined,
              color: Color.fromARGB(255, 158, 4, 4), // Vx.black replacement
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              color: Colors.black, // Vx.black replacement
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: BannerCarousel(
                borderRadius: 8,
                height: height * 0.4,
                imagePaths: const [
                  ImageCons.banner1,
                  ImageCons.banner1,
                  ImageCons.banner1,
                ],
              ),
            ), // .paddingSymmetric() replacement
            const SizedBox(height: 10), // 10.heightBox replacement
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Course name",
                style: TextStyle(
                  fontWeight: FontWeight.w600, // semiBold equivalent
                  fontSize: 18,
                ),
              ), // .text.semiBold.size(18).make().paddingSymmetric() replacement
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TileandCollections(
                titleontap: () {},
                individualontap: () {},
              ),
            ), // .paddingSymmetric() replacement
            const SizedBox(height: 10), // 10.heightBox replacement
            const Divider(
              height: 1,
              color: Color(0xFFEEEEEE), // Vx.gray200 replacement
            ),
            const SizedBox(height: 8), // 8.heightBox replacement
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Keywords",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ), // .text.bold.size(16).make().paddingSymmetric() replacement
            ),
            const SizedBox(height: 8), // 8.heightBox replacement
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Variants(),
            ), // .paddingSymmetric() replacement
            const SizedBox(height: 16), // 16.heightBox replacement
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Uploaded by",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ), // .text.bold.size(16).make().paddingSymmetric() replacement
            ),
            const SizedBox(height: 8), // 8.heightBox replacement
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ShopNameAddressPriceButtons(),
            ), // .paddingSymmetric() replacement
            const SizedBox(height: 16), // 16.heightBox replacement
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Description",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ), // .text.size(18).bold.make().paddingSymmetric() replacement
            ),
            const SizedBox(height: 10), // 10.heightBox replacement
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                StringCons.expara,
              ), // .text.make().paddingSymmetric() replacement
            ),
            const SizedBox(height: 20), // 20.heightBox replacement
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Specification",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ), // .text.bold.size(18).make().paddingSymmetric() replacement
            ),
            const SizedBox(height: 10), // 10.heightBox replacement
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(height: 10); // 10.heightBox replacement
                },
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Expanded(
                        child: Text(
                          "key",
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color(
                              0xFF616161,
                            ), // gray700 equivalent
                          ),
                        ), // .text.size(16).gray700.make() replacement
                      ),
                      Expanded(
                        child: Text(
                          "Value",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ), // .text.size(16).black.make() replacement
                      ),
                    ],
                  );
                },
              ), // .paddingSymmetric() replacement
            ),
            const SizedBox(height: 16), // 16.heightBox replacement
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Related Products",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ), // .text.bold.size(16).make().paddingSymmetric() replacement
            ),
            const Divider(
              thickness: 10,
              color: Color(0xFFF5F5F5), // Vx.gray100 replacement
            ),
            Container(
              color: const Color(0xFFF5F5F5), // gray100 equivalent
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
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
          ],
        ),
      ),
    );
  }
}
