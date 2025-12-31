import 'package:firstapp/database_supabase/DataBase_Data_Class/dataClassName.dart';
import 'package:firstapp/database_supabase/DataBase_Service/CenterDataBase/Database_service.dart';
import 'package:firstapp/database_supabase/dataFetch_abstraction.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class GenericFetch<T> extends FetchData {
  final String tableName;
  RxList<T> rxList = <T>[].obs;
  DatabaseService db=DatabaseService.instance;

  GenericFetch({
    required this.tableName,
  }) {
    initialize();
  }

  initialize() async {
    if (!checkMainDatabse()) {
      rxList.value = await fetchData(tableName.capitalize!) as List<T>;
    }else{
      rxList.value=db.supplyData(tableName.capitalize!) as List<T>;
    }

  }
  @override
  Future<List?> fetchData(String tableName) {
    // TODO: implement fetchData
    return super.fetchData(tableName);
  }
  @override
  bool checkMainDatabse() {
    // TODO: implement checkMainDatabse
    return super.checkMainDatabse();
  }

}