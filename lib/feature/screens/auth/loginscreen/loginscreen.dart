import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/button/customelevatedbutton.dart';
import '../../../../common/button/faqhelp.dart';
import '../../../../common/button/suggesandbutton.dart';
import '../../../../common/textfield.dart/customtextfield.dart';
import '../../../../constant/imageconstant.dart';
import '../../../../constant/stringconstant.dart';
import '../../../controller/auth/login/logincontroller.dart'
    show LoginController;
import '../../shop/home/homescreen.dart';
import '../forgetscreen/forgetpassword.dart';
import '../registerscreen/registerscreen.dart';
import 'widgets/loginwidgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controler = Get.put(LoginController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close_rounded),
        ),
        actions: const [FaqHelp()],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(height: 160), // 160.heightBox replacement
            //evaly logo
            const EvalyLogo(),
            //textfield
            const SizedBox(height: 160), // 160.heightBox replacement
            Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const CustomTextField(
                      title: 'Email Address',
                      prefixIcon: Icons.email_outlined,
                    ),
                    const SizedBox(height: 16), // 16.heightBox replacement
                    Obx(
                      () => CustomTextField(
                        title: 'Password',
                        obscureText: controler.isobscured.value,
                        prefixIcon: Icons.lock_outline_rounded,
                        suffixIcon: controler.isobscured.value
                            ? Iconsax.eye4
                            : Iconsax.eye_slash4,
                        suffixfun: () => controler.isobscured.value =
                            !controler.isobscured.value,
                      ),
                    ),
                    //const SizedBox(height: 2), // 2.heightBox replacement
                    TextButton(
                      onPressed: () => Get.to(() => const ForgetPassword()),
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(
                          color: const Color(0xFF9E9E9E), // gray500 equivalent
                        ),
                      ),
                    ),
                    const SizedBox(height: 10), // 10.heightBox replacement
                    CustomElevatedButton(
                      title: 'Sign In',
                      onPressed: () => Get.to(() => const HomeScreen()),
                    ),
                    const SizedBox(height: 8), // 8.heightBox replacement
                    Center(
                      child: Text(
                        "Or",
                        style: TextStyle(
                          color: const Color(0xFF9E9E9E), // gray500 equivalent
                          fontWeight: FontWeight.w600, // semiBold equivalent
                        ),
                      ),
                    ),
                    const SizedBox(height: 8), // 8.heightBox replacement
                    CustomElevatedButton(
                      title: 'Sign in with Google',
                      leadingicon: ImageCons.googlelogo,
                      backgroundColor: Colors.white,
                      textcolor: Colors.black,
                      applyborder: true,
                      onPressed: () {},
                    ),
                    const SizedBox(height: 100), // 100.heightBox replacement
                    Suggandbutton(
                      buttontitlecolor: const Color(
                        0xFFE53935,
                      ), // Vx.red600 equivalent
                      title: StringCons.dontacc,
                      buttontitle: StringCons.signup,
                      ontap: () => Get.to(() => const RegisterScreen()),
                    ),
                  ],
                ),
              ),
            ),
            //
          ],
        ),
      ),
    );
  }
}
