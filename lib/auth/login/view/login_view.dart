import 'package:firstapp/feature/screens/shop/home/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/button.dart';
import '../../widgets/text_field.dart';
import '../../registration/view/register_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Layer 1: Logo
          Positioned(
            top: screenHeight * 0.1,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset("assets/image/logo/logo_black.png", height: screenHeight * 0.3),
            ),
          ),

          // Layer 2: Form Container
          Align(
            alignment: Alignment.bottomCenter,
            child: FractionallySizedBox(
              heightFactor: 0.6,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(194, 147, 232, 1),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 24,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Auth_text_field(
                        hinttext: "Enter your name",
                        labeltext: "Username",
                        icondata: Icons.people,
                      ),
                      const SizedBox(height: 16),
                      Auth_text_field(
                        labeltext: "Password",
                        hinttext: "Enter your password",
                        obscure: true,
                        icondata: Icons.lock,
                      ),
                      const SizedBox(height: 24),
                      Custom_Auth_Button(
                        title: "Login",
                        function: () => Get.offAll(() => HomeScreen()),
                      ),
                      const SizedBox(height: 12),
                      Custom_Auth_Button(
                        title: "Register",
                        function: () => Get.to(() => RegisterView()),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
