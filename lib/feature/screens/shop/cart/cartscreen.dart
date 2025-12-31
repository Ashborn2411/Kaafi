import 'package:firstapp/feature/screens/shop/account/widget/wishlist.dart';
import 'package:firstapp/feature/screens/shop/cart/cartController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/text/titletext.dart';
import '../../../../constant/imageconstant.dart';
import '../../../../database_supabase/DataBase_Data_Class/courses_data_class.dart';
import '../../../../navigation.dart';
import 'widget/bottomtitle.dart';

class CartSrceen extends StatelessWidget {
  const CartSrceen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller=Get.put(CartController());
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: const BottomNav(),
      backgroundColor: Colors.white, // Vx.white replacement
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white, // Vx.white replacement
        title: const TitleText(title: 'Shopping Cart', size: 22),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete_outline, size: 30),
          ),
        ],
      ),
      body: SizedBox(
        width: w,
        child: Stack(
          children: [
            (controller.cartlist.isNotEmpty)
                ? Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ListView.separated(
                      itemCount: controller.cartlist.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          height: 10,
                        ); // 10.heightBox replacement
                      },
                      itemBuilder: (BuildContext context, int index) {
                        Course c=controller.getCartCourses(controller.cartlist[index]);
                        return WishListComponent(title:c.title
                            ,price:c.price.toString(), url:c.thumbnail,);// .text.make().box.red100.make() replacement
                      },
                    ),
                  ) // .box.padding().make() replacement
                : Column(
                    children: [
                      Center(
                        child: const Image(
                          image: AssetImage(ImageCons.cart),
                          width: 400,
                        ),
                      ), // .centered() replacement
                      Text(
                        'Nothing to add to Cart',
                        style: TextStyle(
                          fontWeight: FontWeight.w600, // semiBold equivalent
                          color: const Color(0xFF9E9E9E), // gray500 equivalent
                          fontSize: 16,
                        ),
                      ), // .text.semiBold.gray500.size(16).make() replacement
                    ],
                  ),
            Positioned(
              bottom: 0, // BorderSide.strokeAlignInside replacement
              child: SizedBox(
                width: w,
                child: const BottomTitle(),
              ), // .box.width(w).make() replacement
            ),
          ],
        ),
      ), // .box.width(w).make() replacement
    );
  }
}
