import 'package:firstapp/LocalStorage/smallStorage.dart';
import 'package:firstapp/database_supabase/DataBase_Data_Class/dataClassImport.dart';
import 'package:firstapp/database_supabase/DataBase_Service/CenterDataBase/Database_service.dart';
import 'package:get/get.dart';

class AccountController extends GetxController{
 static AccountController get instance=>Get.find<AccountController>();
 DatabaseService db=DatabaseService.instance;
 SmallStorage sd=SmallStorage();
 late User? user=db.database.value.getUserById(sd.box.read("id"));
 late List<String>wishlist=db.database.value.users.firstWhere((v)=>v.userId==sd.box.read("id")).wishlist;
 late List<String>enrolledlist=db.database.value.users.firstWhere((v)=>v.userId==sd.box.read("id")).enrolledlist;

 getCartCourses(String value)=>db.database.value.courses.firstWhere((v)=>v.courseId==value);

}
