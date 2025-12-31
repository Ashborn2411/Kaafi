import 'package:firstapp/database_supabase/DataBase_Data_Class/Catagory_Data_Class.dart';
import 'package:firstapp/database_supabase/DataBase_Data_Class/DataClassFactory.dart';
import 'package:firstapp/database_supabase/DataBase_Service/CenterDataBase/Database_service.dart';
import 'package:firstapp/database_supabase/DataBase_Service/CenterDataBase/MainData_Class.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class FetchData{

  Future<List<dynamic>?> fetchData(String tableName) async {
    final supabase = Supabase.instance.client;
    try {
      final response = await supabase
          .from(tableName)
          .select('*');
      return response.map((value)=>DataClassFactory.create(tableName,value)).toList();
    } catch (e) {
      print('Error fetching lessons: $e');
      return null;
    }
  }
  bool checkMainDatabse(){
    DatabaseService d=DatabaseService.instance;
    return d.database.value==CompleteDatabase.emptydata;
  }
  void refresh(String tableName){
    fetchData(tableName);
  }


}
interface class DataFetchComp{

}

