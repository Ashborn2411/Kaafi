import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/button/customelevatedbutton.dart'
    show CustomElevatedButton;
import '../../../../common/button/faqhelp.dart';
import '../../../../common/button/suggesandbutton.dart' show Suggandbutton;
import '../../../../common/text/termandcondition.dart';
import '../../../../common/text/titletext.dart' show TitleText;
import '../../../../common/textfield.dart/customtextfield.dart'
    show CustomTextField;
import '../../../../constant/stringconstant.dart';
import '../../../controller/auth/register/registercontroller.dart'
    show RegisterController;
import '../loginscreen/loginscreen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controler = Get.put(RegisterController());
    return Scaffold(
      appBar: AppBar(actions: const [FaqHelp()]),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10), // 10.heightBox replacement
              const TitleText(title: StringCons.createaccount),
              const SizedBox(height: 16), // 16.heightBox replacement
              const CustomTextField(
                title: StringCons.fullName,
                prefixIcon: Icons.person_outlined,
              ),
              const SizedBox(height: 16), // 16.heightBox replacement
              const CustomTextField(
                title: StringCons.emailaddress,
                prefixIcon: Icons.email_outlined,
              ),
              const SizedBox(height: 16), // 16.heightBox replacement
              Obx(
                () => CustomTextField(
                  title: StringCons.password,
                  obscureText: controler.isobscured.value,
                  prefixIcon: Icons.lock_outline_rounded,
                  suffixIcon: controler.isobscured.value
                      ? Iconsax.eye4
                      : Iconsax.eye_slash4,
                  suffixfun: () =>
                      controler.isobscured.value = !controler.isobscured.value,
                ),
              ),
              const SizedBox(height: 20), // 20.heightBox replacement
              const TermAndCondition(),
              const SizedBox(height: 20), // 20.heightBox replacement
              CustomElevatedButton(title: StringCons.signup, onPressed: () {}),
              const SizedBox(height: 40), // 40.heightBox replacement
              Suggandbutton(
                title: StringCons.alreadyhaveaccount,
                titlecolor: const Color(0xFF616161), // Vx.gray700 replacement
                buttontitle: StringCons.signin,
                buttontitlecolor: Colors.black, // Vx.black replacement
                ontap: () => Get.to(() => const LoginScreen()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
