import 'package:flutter/material.dart';

import '../../widgets/button.dart';
import '../../widgets/text_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

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
              child: Image.asset(
                "assets/logo.png",
                height: screenHeight * 0.25,
              ),
            ),
          ),

          // Layer 2: Form Container
          Align(
            alignment: Alignment.bottomCenter,
            child: FractionallySizedBox(
              heightFactor: 0.65, // 65% of screen height
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 175, 77, 255),
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
                        hinttext: "Enter your city name",
                        labeltext: "City",
                        icondata: Icons.apartment,
                      ),
                      const SizedBox(height: 16),
                      Auth_text_field(
                        labeltext: "Password",
                        hinttext: "Enter your password",
                        obscure: true,
                        icondata: Icons.lock,
                      ),
                      const SizedBox(height: 16),
                      Auth_text_field(
                        hinttext: "Confirm Password",
                        labeltext: "Retype your password",
                        icondata: Icons.lock,
                        obscure: true,
                      ),
                      const SizedBox(height: 24),
                      Custom_Auth_Button(title: "Register"),
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
