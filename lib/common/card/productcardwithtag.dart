import 'package:firstapp/common/image/productimgwithtag.dart';
import 'package:firstapp/database_supabase/DataBase_Data_Class/courses_data_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../feature/screens/shop/productdetail/productdetailsscreen.dart';
import 'cardlogobanner.dart';
import 'widget/productprice.dart';
import 'widget/ratingwithtotalrated.dart';

class ProductCardWithTag extends StatelessWidget {
  const ProductCardWithTag({super.key,
    required this.id,
    required this.title,
    required this.price,
    required this.enrolled,
    required this.rating,
    required this.url, required this.list});
  final String id;
  final String title;
  final String price;
  final String enrolled;
  final double rating;
  final String url;
  final List<Course>list;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() =>  ProductDetails(id: id, list: list,)),
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
            ProductimgWithTag(height: 200, width: 220,itemsold: enrolled,isnetworkimg: true,imgurl: url,),
            const SizedBox(height: 5.0),
             Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: MultilineTitlewithverification(
                title: title,
                size: 16.0,
                isboled: true,
              ),
            ),
            const SizedBox(height: 10.0),
             Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: ProducPrice(
                price: '5000',
                reduced: true,
                newprice: price,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Text(
                  //   "",
                  //   style: TextStyle(color: Colors.grey[500], fontSize: 12.0),
                  // ),
                  const SizedBox(width: 5.0),
                   RatingwithTotalrates(rate: rating, totalrated: '20'),
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
