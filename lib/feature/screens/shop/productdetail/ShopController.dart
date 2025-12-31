import 'package:firstapp/LocalStorage/smallStorage.dart';
import 'package:firstapp/Utils/AppString.dart';
import 'package:firstapp/database_supabase/DataBase_Data_Class/courses_data_class.dart';
import 'package:firstapp/database_supabase/DataBase_Service/CenterDataBase/Database_service.dart';
import 'package:firstapp/database_supabase/DataBase_Service/CenterDataBase/MainData_Class.dart';
import 'package:firstapp/database_supabase/DataBase_Service/FetchFactory/fetchFactory.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';


class ProductController extends GetxController{
  ProductController({required this.id});
  static ProductController get instance=>Get.find();
  DatabaseService db=DatabaseService.instance;
  SmallStorage sd=SmallStorage.instance;
  late List<String>cartlist=db.database.value.users.firstWhere((v)=>v.userId==sd.box.read("id")).cartlist;
  late List<String>enrolled_list=db.database.value.users.firstWhere((v)=>v.userId==sd.box.read("id")).enrolledlist;
  late List<String>wishlist=db.database.value.users.firstWhere((v)=>v.userId==sd.box.read("id")).wishlist;
  Supabase supabase=Supabase.instance;
  final String id;
  late final Course data=db.supplyData(AppString.course).firstWhere((v)=>v.courseId==id);
  void like()async{
    wishlist.add(id);
    await supabase.client.from(AppString.user.capitalize!).update({'wish_list':wishlist}).eq('userId', sd.box.read("id"));
  }
  void addtoCart()async{
        cartlist.add(id);
        await supabase.client.from(AppString.user.capitalize!).update({'cart':enrolled_list}).eq('userId', sd.box.read("id"));
  }
}

