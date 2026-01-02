import 'package:firstapp/ai_integrate.dart';
import 'package:firstapp/feature/screens/shop/account/accountController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../constant/imageconstant.dart';
import '../../../../../../navigation.dart';
import '../../../account/accountscreen.dart';
import '../../../account/widget/orderlist/orderlist.dart';
import '../../../account/widget/wishlist.dart';
import '../../../cart/cartscreen.dart';
import '../../homescreen.dart';
import 'widget/customlisttitle.dart';

class MyDrawer extends StatelessWidget {
  final String userName;
  final String userEmail;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final AccountController controller;
  const MyDrawer({
    super.key,
    required this.userName,
    required this.userEmail,
    required this.scaffoldKey,
    required this.controller,
  });


  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Drawer(
      width: w / 1.5,
      child: ClipRRect(
        borderRadius: BorderRadius.zero,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(height: 40), // 40.heightBox replacement
            Column(
              children: [
                const SizedBox(height: 20.0),
                const CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Color(0xFFE0E0E0), // Vx.gray300 replacement
                  backgroundImage: AssetImage(ImageCons.person),
                ),
                const SizedBox(height: 16.0),
                Text(
                  userName,
                  style: const TextStyle(fontSize: 18.0, color: Colors.black),
                ),
                Text(
                  userEmail,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF757575), // Vx.gray600 replacement
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20), // 20.heightBox replacement


            CustomListTitle(
              title: 'Enrolled',
              icon: Icons.request_page_outlined,
              ontap: () {
                Get.to(() => Wishlist(controller: controller, list: controller.enrolledlist));
                scaffoldKey.currentState?.closeDrawer();
              },
            ),
            CustomListTitle(
              title: 'Wishlist',
              icon: Icons.favorite_border_outlined,
              ontap: () => Get.to(() =>Wishlist(controller: controller,list: controller.wishlist,)),
            ),

            CustomListTitle(
              title: 'Chat with KAFFI Bot',
              icon: Icons.chat,
              ontap: () =>Get.to(()=>Ai_Chat()),
            ),
          ],
        ),
      ),
    );
  }
}
