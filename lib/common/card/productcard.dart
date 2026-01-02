import 'package:firstapp/common/button/customelevatedbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../database_supabase/DataBase_Data_Class/courses_data_class.dart';
import '../../feature/screens/shop/productdetail/productdetailsscreen.dart';
import 'widget/productavailabilty.dart';
import 'widget/productprice.dart';
import 'widget/productsubtitle.dart';
import 'widget/producttitlewithverifiacation.dart';
import 'widget/ratingwithtotalrated.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.amount,
    required this.price,
    this.newprice,
    required this.imgurl,
    required this.isnetworkimg,
    this.isSemibold = true,
    this.reduced = false,
    this.isverified = true,
    this.applyrating = false,
    required this.id, required this.list,
  });
  final String title;
  final String id;
  final String subtitle;
  final String amount;
  final String price;
  final String? newprice;
  final String imgurl;
  final bool isnetworkimg;
  final bool reduced;
  final bool isverified;
  final bool isSemibold;
  final bool applyrating;
  final List<Course>list;
  @override
  Widget build(BuildContext context) {
    final h=MediaQuery.heightOf(context);
    final w=MediaQuery.widthOf(context);
    return GestureDetector(
      onTap: () => Get.to(() => ProductDetails(id: id, list:list,)),
      child: Container(
        width:w*0.6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white, // Vx.white replacement
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            (isnetworkimg)
                ? Image(image: NetworkImage(imgurl),fit: BoxFit.cover,height: 120,width: 200,)
                :Container(
              margin: EdgeInsets.all(6),
              decoration:BoxDecoration(color: Colors.grey.shade400,borderRadius: BorderRadius.all(Radius.circular(12))) ,
              height: 100,width: double.infinity,child:  Image(
              image: AssetImage(imgurl),
              height: 120,
              width: 120,
              fit: BoxFit.fill,
            ),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProducttitlewithVerification(
                    title: title,
                    isverified: isverified,
                    isSemibold: isSemibold,
                  ),
                  ProductSubtitle(title: subtitle),
                  const SizedBox(height: 1), // 1.heightBox replacement
                  ProducPrice(
                    price: price,
                    newprice: newprice,
                    reduced: reduced,
                  ),
                  const SizedBox(height: 2), // 2.heightBox replacement
                  // (applyrating)
                  //     ? const RatingwithTotalrates(
                  //         rate: 4,
                  //         totalrated: "20k",
                  //         itemsize: 10,
                  //       )
                  //     : ProductAbleabilty(amount: amount),
                  Align(alignment: Alignment.centerRight,child:
                  GestureDetector(onTap: (){},
                  child: Container(
                    decoration: BoxDecoration(
                        color:Colors.purple ,
                        borderRadius: BorderRadius.all(
                            Radius.circular(6))
                    )
                    ,child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 4)
                      ,child:Text("Buy Now",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.bold),)
                  ),),),),
                  const SizedBox(height: 4), // 4.heightBox replacement
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
