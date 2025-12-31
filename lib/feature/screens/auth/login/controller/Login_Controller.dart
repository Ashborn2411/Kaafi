import 'dart:io';

import 'package:firstapp/LocalStorage/smallStorage.dart';
import 'package:firstapp/feature/screens/shop/home/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../../../Utils/validator/validator.dart';
import '../../Auth_implements/Auth_implement.dart';




abstract class Login_abstract{
Future<void>signIn(String email,String password);
}

class Login_Controller extends GetxController implements Login_abstract,Process_Email_PassWord{
  final supabase = Supabase.instance.client;
  final TextEditingController email=TextEditingController();
  final TextEditingController password=TextEditingController();
  final RxBool isobscured=false.obs;
  SmallStorage sd=SmallStorage();
  static Login_Controller get instance => Get.find();
  @override
  String? processPassword(TextEditingController password) {
    // TODO: implement processPassword
    if(Validator.validateEmptyText("password", password.text.trim()) != null&&Validator.validatePassword(password.text.trim())!=null){
      return password.text.trim();
    }
    throw UnimplementedError();
  }

  @override
  String processEmail(TextEditingController email) {
    // TODO: implement processEmail
    if(Validator.validateEmptyText("Email", email.text.trim()) != null&&Validator.validateEmail(email.text.trim())!=null){
      return email.text.trim();
    }
    throw UnimplementedError();
  }


  @override
  Future<void> signIn(String email, String password) async{
    // TODO: implement signUp
    try{
      final AuthResponse res = await supabase.auth.signInWithPassword(
        email: email,
        password:password,
      );
      final Session? session = res.session;
      final User? user = res.user;
      sd.box.writeIfNull("email", user?.email);
      sd.box.writeIfNull("id",user?.id );
      sd.box.writeIfNull("login", true);
      if(user!=null)Get.to(()=>HomeScreen());
    }
    catch(e){
      print(e);
    }
  }

}



