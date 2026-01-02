import 'package:firstapp/ai_integrate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../auth/profileinfo/profileinfo.dart';
import 'ButtonwithTitle.dart';
import 'orderlist/orderlist.dart';

class FourButtonRow extends StatelessWidget {
  const FourButtonRow({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonwithTitle(
          title: "Address",
          color: const Color(0xFFFB8C00), // Vx.orange600 replacement
          onpressd: () {},
          icon: Icons.location_pin,
        ),
        const SizedBox(width: 50), // 50.widthBox replacement
        ButtonwithTitle(
          title: "Message",
          color: const Color(0xFFFFEB3B), // Vx.yellow500 replacement
          onpressd: () =>Get.to(()=>Ai_Chat()),
          icon: Icons.message,
        ),
      ],
    );
  }
}

