import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../../../../LocalStorage/smallStorage.dart';
import '../../../../../database_supabase/DataBase_Data_Class/courses_data_class.dart';
import '../../../../../database_supabase/DataBase_Service/CenterDataBase/Database_service.dart';

class HomeController extends GetxController {
  final DatabaseService db = DatabaseService.instance;
  late final List<Course> list;
  Rx<String> name=''.obs;
   Rx<String> email=''.obs;

  @override
  void onInit() {
    super.onInit();
    list = db.database.value.courses;
    _initController(); // async-safe wrapper
  }

  Future<void> _initController() async {
    final sm = SmallStorage.instance;
    name.value =  db.database.value.getUserById(sm.box.read("id"))!.name;
    email.value = sm.box.read("email") ?? "guest@example.com";
    update(); // if using GetBuilder
  }
}
