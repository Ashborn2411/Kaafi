import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoPorvideController extends GetxController{
  static InfoPorvideController get instance=>Get.find();

  final RxBool ismantaped=false.obs;
  final RxBool iswomantaped=false.obs;
  final TextEditingController date=TextEditingController();
  
}