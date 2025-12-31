import 'package:get/get.dart';

import '../../../../LocalStorage/smallStorage.dart';
import '../../../../database_supabase/DataBase_Data_Class/courses_data_class.dart';
import '../../../../database_supabase/DataBase_Service/CenterDataBase/Database_service.dart';

class CartController extends GetxController{
  static CartController get instance=>Get.find<CartController>();
  DatabaseService db=DatabaseService.instance;
  SmallStorage sd=SmallStorage.instance;
  late List<String>cartlist=db.database.value.users.firstWhere((v)=>v.userId==sd.box.read("id")).cartlist;
  getCartCourses(String value)=>db.database.value.courses.firstWhere((v)=>v.courseId==value);
}