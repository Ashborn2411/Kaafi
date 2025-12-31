import 'package:get/get.dart';

import 'package:get_storage/get_storage.dart';

class SmallStorage extends GetxController {
  static SmallStorage get instance => Get.find<SmallStorage>();
  final GetStorage box = GetStorage();

  Future<void> initialize() async {
    await GetStorage.init();
  }

  Future<void> write(String key, String value) async {
    await box.write(key, value);
  }

  dynamic getData(String key) {
    return box.read(key);
  }

  Future<void> delete(String key) async {
    await box.remove(key);
  }
}
