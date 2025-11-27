import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/button/circulariconbutton.dart';
import '../../../../common/text/titletext.dart';
import '../../../../constant/imageconstant.dart';
import '../../../../navigation.dart';
import '../../auth/forgetscreen/forgetpassword.dart';
import '../../auth/profileinfo/profileinfo.dart';
import 'widget/orderlist/orderlist.dart';
import 'widget/wishlist.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNav(),
      appBar: AppBar(
        title: Text(
          "Account",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_rounded),
          ),
        ],
      ),
      body: Column(
        children: [
          const Center(
            child: Profilewitheditbutton(),
          ), // .centered() replacement
          const SizedBox(height: 20), // 20.heightBox replacement
          const TitleText(title: "Bijoy Ahemed", size: 20),
          Text(
            "tanjimjoy7@gmail.com",
            style: TextStyle(
              color: const Color(0xFF9E9E9E), // gray500 equivalent
            ),
          ),
          const SizedBox(height: 10), // 10.heightBox replacement
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFFEEEEEE), // gray200 equivalent
              borderRadius: BorderRadius.circular(8), // rounded equivalent
            ),
            padding: const EdgeInsets.only(
              left: 5,
              right: 10,
              top: 2,
              bottom: 2,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.star,
                  size: 16,
                  color: Colors.amber, // Vx.amber500 replacement
                ),
                Text("0 Points", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const SizedBox(height: 20), // 20.heightBox replacement
          const FourButtonRow(),
          const SizedBox(height: 20), // 20.heightBox replacement
          const Divider(
            thickness: 8,
            color: Color(0xFFF5F5F5), // Vx.gray100 replacement
          ),
          const FourTitlesWithIcons(),
        ],
      ),
    );
  }
}

class FourTitlesWithIcons extends StatelessWidget {
  const FourTitlesWithIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
      child: Column(
        children: [
          IconListTitle(
            ontap: () {},
            color: const Color(
              0xFF4CAF50,
            ).withOpacity(0.85), // Vx.green500 replacement
          ),
          const SizedBox(height: 10), // 10.heightBox replacement
          IconListTitle(
            title: "Wishlist",
            icon: Icons.favorite_border_outlined,
            ontap: () => Get.to(() => const Wishlist()),
            color: const Color(0xFFF44336), // Vx.red500 replacement
          ),
          const SizedBox(height: 10), // 10.heightBox replacement
          IconListTitle(
            title: "Notification",
            ontap: () {},
            icon: Icons.notifications_outlined,
            color: const Color(0xFFFFCA28), // Vx.amber400 replacement
          ),
          const SizedBox(height: 10), // 10.heightBox replacement
          IconListTitle(
            icon: Icons.lock_outline,
            title: "Change Password",
            ontap: () => Get.to(() => const ForgetPassword()),
            color: const Color(0xFF2196F3), // Vx.blue500 replacement
          ),
        ],
      ),
    );
  }
}

class IconListTitle extends StatelessWidget {
  const IconListTitle({
    super.key,
    this.icon = Icons.person_add_outlined,
    required this.ontap,
    this.title = "Old Accounts & Orders",
    required this.color,
  });
  final IconData icon;
  final VoidCallback ontap;
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      leading: CustomIconButton(
        icon: icon,
        backgroundColor: color,
        onPressed: () {},
      ),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.w400)),
    );
  }
}

class FourButtonRow extends StatelessWidget {
  const FourButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonwithTitle(
          title: "Orders",
          color: const Color(0xFF4CAF50), // Vx.green500 replacement
          onpressd: () => Get.to(() => const Orderlist()),
          icon: Icons.assignment,
        ),
        const SizedBox(width: 50), // 50.widthBox replacement
        ButtonwithTitle(
          title: "Profile",
          color: const Color(0xFF2196F3), // Vx.blue500 replacement
          onpressd: () =>
              Get.to(() => const CompleteProfileScreen(isUpdate: true)),
          icon: Icons.person,
        ),
        const SizedBox(width: 50), // 50.widthBox replacement
        ButtonwithTitle(
          title: "Adress",
          color: const Color(0xFFFB8C00), // Vx.orange600 replacement
          onpressd: () {},
          icon: Icons.location_pin,
        ),
        const SizedBox(width: 50), // 50.widthBox replacement
        ButtonwithTitle(
          title: "Message",
          color: const Color(0xFFFFEB3B), // Vx.yellow500 replacement
          onpressd: () {},
          icon: Icons.message,
        ),
      ],
    );
  }
}

class ButtonwithTitle extends StatelessWidget {
  const ButtonwithTitle({
    super.key,
    required this.title,
    required this.color,
    required this.onpressd,
    required this.icon,
  });
  final String title;
  final Color color;
  final VoidCallback onpressd;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomIconButton(
          minimumSize: const Size(50, 50),
          size: 24,
          iconColor: color,
          icon: icon,
          onPressed: onpressd,
        ),
        Text(
          title,
          style: TextStyle(
            color: const Color(0xFF9E9E9E), // gray500 equivalent
            fontSize: 12, // sm equivalent
          ),
        ),
      ],
    );
  }
}

class Profilewitheditbutton extends StatelessWidget {
  const Profilewitheditbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: const Color(0xFFEEEEEE), // Vx.gray200 replacement
              shape: BoxShape.circle, // roundedFull equivalent
            ),
            child: Center(
              child: const Image(
                width: 80,
                height: 60,
                color: Color(0xFFBDBDBD), // Vx.gray400 replacement
                fit: BoxFit.contain,
                image: AssetImage(ImageCons.person),
              ),
            ),
          ),
        ),
        Positioned(
          top: 50,
          left: 100,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 4,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: CustomIconButton(
              icon: Icons.edit,
              size: 18,
              minimumSize: const Size(30, 30),
              backgroundColor: Colors.white,
              iconColor: Colors.black,
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
