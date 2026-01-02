import 'package:firstapp/feature/screens/shop/account/widget/wishlist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../auth/forgetscreen/forgetpassword.dart';
import '../accountController.dart';
import 'IconListtile.dart';

class AccountMenuItem {
  final String title;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  AccountMenuItem({
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
  });
}


class Fourtitleswithicon extends StatelessWidget {
  const Fourtitleswithicon({super.key, required this.controller});
  final AccountController controller;

  @override
  Widget build(BuildContext context) {

    // Define your menu items here
    final List<AccountMenuItem> accountMenuItems = [
      AccountMenuItem(
        title: "Enrolled Courses",
        icon: Icons.school,
        color: const Color(0xFF4CAF50).withValues(alpha: 0.85),
        onTap: () =>Get.to(()=>Wishlist(controller: controller, list: controller.enrolledlist,)),
      ),
      AccountMenuItem(
        title: "Wishlist",
        icon: Icons.favorite_border_outlined,
        color: const Color(0xFFF44336),
        onTap: () {
          Get.to(() => Wishlist(controller: controller, list: controller.wishlist,));
        },
      ),
      AccountMenuItem(
        title: "Certificates",
        icon: Icons.contact_page,
        color: const Color(0xFFFFCA28),
        onTap: () {
          // TODO: Navigate to certificates page
        },
      ),
      AccountMenuItem(
        title: "Change Password",
        icon: Icons.password,
        color: const Color(0xFF2196F3),
        onTap: () {
          Get.to(() => const ForgetPassword());
        },
      ),
    ];

    return ListView.builder(
          itemCount: accountMenuItems.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final item = accountMenuItems[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 2.0),
              child: IconListTitle(
                title: item.title,
                icon: item.icon,
                color: item.color,
                ontap: item.onTap,
              ),
            );
          },
    );
  }
}
