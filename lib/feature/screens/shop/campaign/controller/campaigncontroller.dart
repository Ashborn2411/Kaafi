import 'package:get/get.dart';

class CustomHeaderController extends GetxController {
  var selectedIndex = 0.obs;

  void setSelectedIndex(int index) {
    selectedIndex.value = index;
  }
}