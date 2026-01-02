import 'package:firstapp/feature/screens/shop/account/accountController.dart';
import 'package:firstapp/feature/screens/shop/account/widget/FourTitleswithIcon.dart';
import 'package:firstapp/feature/screens/shop/account/widget/FourbuttonRow.dart';
import 'package:firstapp/feature/screens/shop/account/widget/Profilewitheditbutton.dart';
import 'package:flutter/material.dart';
import '../../../../common/text/titletext.dart';
import '../../../../navigation.dart';



class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
   final AccountController controller =AccountController();
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
          TitleText(title: controller.user!.name, size: 20),
          Text(
            controller.user!.email,
            style: TextStyle(
              color: const Color(0xFF9E9E9E), // gray500 equivalent
            ),
          ),
          const SizedBox(height: 20),
          const FourButtonRow(),
          const SizedBox(height: 20), // 20.heightBox replacement
          const Divider(
            thickness: 8,
            color: Color(0xFFF5F5F5), // Vx.gray100 replacement
          ),
           Fourtitleswithicon(controller:controller),
        ],
      ),
    );
  }
}



