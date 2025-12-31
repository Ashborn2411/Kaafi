import 'package:firstapp/database_supabase/DataBase_Data_Class/courses_data_class.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

import '../../../../common/card/banner/bannercarousel.dart' show BannerCarousel;
import '../../../../common/card/productcardwithtag.dart';
import '../../../../constant/imageconstant.dart';
import '../../../../navigation.dart';
import '../home/widgets/appbar/widget/searchbar.dart';
import 'widget/customheader1.dart';

class CampaignScreen extends StatelessWidget {
  const CampaignScreen({super.key, required this.id, required this.list});
  final String id;
  final List<Course>list;
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white, // Vx.white replacement
      bottomNavigationBar: const BottomNav(),
      appBar: AppBar(
        surfaceTintColor: Colors.white, // Vx.white replacement
        title: const RoundedSearchBar(),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.share))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10), // 10.heightBox replacement
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: BannerCarousel(
                imagePaths: [
                  ImageCons.banner1,
                  ImageCons.banner1,
                  ImageCons.banner1,
                ],
              ),
            ), // .paddingSymmetric(horizontal: 10) replacement
            const SizedBox(height: 10), // 10.heightBox replacement
            SizedBox(
              width: w,
              child: StickyHeader(
                header: CustomHeader1(sort: () {}, filter: () {}),
                content: Container(
                  color: const Color(0xFFF5F5F5), // gray100 equivalent
                  padding: const EdgeInsets.only(top: 10),
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
                      return  ProductCardWithTag(id: id,
                        title: list[index].title,
                        price: list[index].price.toString(),
                        enrolled:list[index].enrolled.toString(),
                        rating: list[index].rating,
                        url: list[index].thumbnail, list: list,);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
