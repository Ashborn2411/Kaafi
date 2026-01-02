import 'package:firstapp/Utils/AppString.dart';
import 'package:firstapp/Utils/validator/validator.dart';

import 'package:firstapp/feature/screens/shop/home/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../Auth_implements/Auth_implement.dart';
import '../../login/view/login_view.dart';



abstract class Register_abstract{
  Future<void>signUp(String email,String password,String name);
}

class RegisterController extends GetxController implements Register_abstract,Process_Email_PassWord {
  static RegisterController get instance=>Get.find();

  final RxBool isobscured=false.obs;
  final RxBool checked=false.obs;
  final supabase = Supabase.instance.client;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController=TextEditingController();
  final TextEditingController confirmPassWord=TextEditingController();
  //final TextEditingController roleController=TextEditingController();

  @override
  Future<void> signUp(String email, String password,String name) async {
    try{
      final AuthResponse res = await supabase.auth.signUp(
        email:email,
        password: password,);
      final Session? session = res.session;
      final User? user = res.user;
      await supabase.from(AppString.user.capitalize!).insert({'userId':user!.id,'email':user.email,'name':name});
      if(session!=null)Get.to(()=>LoginView());
      }catch(e){
      print(e);
    }
  }
 void showMessage(){
 }

  @override
  String? processPassword(TextEditingController password) {
    // TODO: implement processPassword
    if (Validator.validateEmptyText("password", password.text.trim()) != null &&
        Validator.validatePassword(password.text.trim()) != null) {
      return password.text.trim();
    }
    throw UnimplementedError();
  }

  @override
  String? processEmail(TextEditingController email) {
    // TODO: implement processEmail
    if (Validator.validateEmptyText("Email", email.text.trim()) != null &&
        Validator.validateEmail(email.text.trim()) != null) {
      return email.text.trim();
    }
    throw UnimplementedError();
  }


}