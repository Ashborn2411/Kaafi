import 'package:firstapp/Utils/AppString.dart';
import 'package:firstapp/database_supabase/DataBase_Service/CenterDataBase/MainData_Class.dart';
import 'package:firstapp/database_supabase/dataFetch_abstraction.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'MainData_Class.dart';

abstract class MainDatabase{
  Future<CompleteDatabase>fetchData();
  List<dynamic>supplyData(String s);
  void refresh();
  void initialize();
  void clear();
}

class DatabaseService implements MainDatabase{
  static final DatabaseService instance = DatabaseService._internal();
  Rx<CompleteDatabase> database=CompleteDatabase.emptydata.obs;
  bool _isinit=false;
  DatabaseService._internal();
  CompleteDatabase parseCompleteDatabase(dynamic json) {
    return CompleteDatabase.fromJson(json);
  }
  @override
  Future<CompleteDatabase> fetchData() async {
    final supabase = Supabase.instance.client;
    try {
      final response = await supabase.rpc('get_all_data');
      final value=compute(parseCompleteDatabase,response);
      database.value=await value;

      return database.value;
    } catch (e) {
      print('Error fetching database: $e');
      return database.value;
    }
  }

  @override
  Future<void> initialize() async{
    // TODO: implement initialize
    if(_isinit==false){
     await fetchData();
     print(database.value);
    }
  }

  @override
  void refresh() {
    // TODO: implement refresh
    fetchData();
  }

  @override
  void clear() {
    // TODO: implement clear
    database.value=CompleteDatabase.emptydata;
  }

  @override
  List supplyData(String s) {
    switch (s.trim()) {
    case AppString.course:
    return database.value.courses;
    case AppString.certificate:
    return database.value.certificates;
    case AppString.user:
    return database.value.users;
    case AppString.student:
    return database.value.students;

    case AppString.instructor:
    return database.value.instructors;

    case AppString.enrollment:
    return database.value.enrollments;

    case AppString.section:
    return database.value.sections;

    case AppString.lesson:
    return database.value.lessons;

    case AppString.quiz:
    return database.value.quizzes;

    case AppString.question:
    return database.value.questions;

    case AppString.review:
    return database.value.reviews;

    case AppString.forum:
    return database.value.forums;

      case AppString.post:
    return database.value.posts;

    case AppString.payment:
    return database.value.payments;

    case AppString.notification:
    return database.value.notifications;
    default:
    throw Exception('Unknown type: ${s.trim()}');
    }
    }
    }





