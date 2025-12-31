import 'package:firstapp/Utils/validator/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../auth/widgets/button.dart';
import '../../../../../auth/widgets/text_field.dart';
import '../controller/register_controller.dart';


class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    final controller = Get.put(RegisterController());
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
                        icondata: Icons.people, controller: controller.nameController,
                      ),
                      const SizedBox(height: 16),
                      // Auth_text_field(
                      //   hinttext: "What describe you?",
                      //   labeltext: 'Choose Role ',
                      //   icondata: Icons.person,
                      //   controller: controller.,
                      // ),
                      Auth_text_field(
                        obscure: false,
                        function: (value)=> Validator.validateEmail(value),
                        controller: controller.emailController,
                        hinttext: "Enter your email",
                        labeltext: "Email",
                        icondata: Icons.mail,
                      ),
                      const SizedBox(height: 16),
                      Auth_text_field(
                        function:(value)=> Validator.validatePassword(value),
                        labeltext: "Password",
                        controller: controller.passwordController,
                        hinttext: "Enter your password",
                        obscure: true,
                        icondata: Icons.lock,
                      ),
                      const SizedBox(height: 16),
                      Auth_text_field(
                        controller: controller.confirmPassWord,
                        hinttext: "Confirm Password",
                        labeltext: "Retype your password",
                        icondata: Icons.lock,
                        obscure: true,
                      ),
                      const SizedBox(height: 24),
                      Custom_Auth_Button(title: "Register",
                          function:(){
                        if(controller.passwordController.text.trim()==controller.confirmPassWord.text.trim()){
                          controller.signUp(
                              controller.emailController.text.trim(),
                              controller.confirmPassWord.text.trim(),
                              controller.nameController.text.trim());
                        }else{
                          GetSnackBar();
                          }
                          }),

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
