import 'package:firstapp/database_supabase/DataBase_Service/CenterDataBase/Database_service.dart';
import 'package:get/get.dart';

import '../../../../../database_supabase/DataBase_Data_Class/courses_data_class.dart';

class HomeController extends GetxController{
  DatabaseService db=DatabaseService.instance;
  late final list=db.database.value.courses;

}

