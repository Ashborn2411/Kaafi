import 'package:flutter/material.dart';

import '../../../../../../common/card/productcardwithtag.dart';
import '../../../../../../database_supabase/DataBase_Data_Class/courses_data_class.dart';
import '../shopcardlisttitle.dart';

class Part2 extends StatelessWidget {
  const Part2({super.key, required this.list});
  final List<Course>list;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5), // gray100 equivalent
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8), // topRounded equivalent
          topRight: Radius.circular(8), // topRounded equivalent
        ),
      ),
      width: double.infinity,
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShopCardlistTitle(title: 'Top rated courses',ontap: () {},
              list:list,),
            ShopCardlistTitle(
              title: 'Life skills courses',
              subtitle: 'You might need',
              color: const Color(0xFFF57C00), // Vx.orange500 replacement
              ontap: () {}, list:list,
            ),
            ShopCardlistTitle(
              title: 'Engineering courses',
              subtitle: 'Exclusive Deals for You',
              color: const Color(0xFF10B981), // Vx.emerald500 replacement
              ontap: () {},
              list:list,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
              child: Text(
                "Recently Added",
                style: TextStyle(
                  fontWeight: FontWeight.w600, // semiBold equivalent
                  fontSize: 16,
                ),
              ), // .text.semiBold.size(16).make().paddingOnly() replacement
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                mainAxisExtent: 300,
              ),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return  ProductCardWithTag(id: '',
                  title: list[index].title,
                  price: list[index].price.toString(),
                  enrolled: list[index].enrolled.toString(),
                  rating: list[index].rating,
                  url: list[index].thumbnail, list: list,);
              },
            ),
          ],
        ),
      ),
    ); // .box.gray100.width().topRounded().make() replacement
  }
}
