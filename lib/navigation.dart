import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import 'feature/screens/shop/account/accountscreen.dart';
import 'feature/screens/shop/campaign/campaign.dart';
import 'feature/screens/shop/cart/cartscreen.dart';
import 'feature/screens/shop/home/homescreen.dart';

class NavigationController extends GetxController {
  static NavigationController get instance => Get.find();
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const CampaignScreen(),
    const ShoppingCart(),
    const AccountScreen(),
  ];

  void navigateTo(int index) {
    if (selectedIndex.value != index) {
      selectedIndex.value = index;
      Get.offAll(
        () => screens[index],
        transition: Transition.fadeIn,
        curve: Curves.easeIn,
      );
    }
  }
}

class BottomNav extends StatelessWidget {
  const BottomNav({super.key, this.applyPop = false});
  final bool applyPop;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Obx(
      () => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(20.0)),
          child: NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (value) {
              if (applyPop) Navigator.pop(context);
              controller.navigateTo(value);
            },
            backgroundColor: Colors.white,
            indicatorColor: Colors.white, // Vx.white replacement
            destinations: List.generate(
              4,
              (index) => buildNavigationDestination(
                index,
                controller.selectedIndex.value == index,
              ),
            ),
          ),
        ),
      ), // .box.shadowSm.rounded.make() replacement
    );
  }
}

Widget buildNavigationDestination(int index, bool isSelected) {
  final icon = _getIcon(index);

  return NavigationDestination(
    icon: isSelected
        ? Icon(icon, color: Colors.black)
        : Icon(icon, color: const Color(0xFF9E9E9E)), // Vx.gray500 replacement
    label: _getLabel(index),
  );
}

IconData _getIcon(int index) {
  switch (index) {
    case 0:
      return Icons.home_outlined;
    case 1:
      return Icons.discount_outlined;
    case 2:
      return Icons.shopping_cart_outlined;
    case 3:
      return Iconsax.user;
    default:
      throw Exception('Invalid index for NavigationDestination');
  }
}

String _getLabel(int index) {
  switch (index) {
    case 0:
      return 'Home';
    case 1:
      return 'Campaign';
    case 2:
      return 'Cart';
    case 3:
      return 'Account';
    default:
      throw Exception('Invalid index for NavigationDestination label');
  }
}
