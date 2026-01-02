import 'package:firstapp/database_supabase/DataBase_Data_Class/courses_data_class.dart';
import 'package:firstapp/feature/screens/shop/account/accountController.dart';
import 'package:flutter/material.dart';

import '../../../../../constant/imageconstant.dart';

class Wishlist extends StatelessWidget {
  const Wishlist({super.key, required this.controller, required this.list});
  final AccountController controller;
  final List list;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Wishlist")),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: ListView.builder(
            itemCount: list.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              Course course=controller.getCartCourses(list[index]);
              return WishListComponent(title: course.title,
                price:course.price.toString(),
                url: course.thumbnail,);
            },
          ),
        ),
      ),
    );
  }
}

class WishListComponent extends StatelessWidget {
  final String title;
  final String price;
  final String url;

  const WishListComponent({
    super.key,
    required this.title,
    required this.price,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(width: 0.2)
        ,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6), // Rounded corners
            child: Image.network(
              url,
              width: 120,
              height: 70,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image),
            ),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style:  TextStyle(fontSize: 18,fontWeight:FontWeight.w400),
                    ),
                  ),
                  Expanded(
                    child: Text(
                     "Price $price",
                      style: const TextStyle(fontWeight: FontWeight.w700,fontSize: 16,color:Colors.red),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
