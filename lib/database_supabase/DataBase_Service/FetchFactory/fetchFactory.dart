import 'package:firstapp/Utils/AppString.dart';
import 'package:firstapp/database_supabase/DataBase_Service/CenterDataBase/Database_service.dart';
import 'package:firstapp/database_supabase/DataBase_Service/FetchFactory/test.dart';
import 'package:flutter/cupertino.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'FetchBundle.dart';

class FetchFactory {
  static dynamic create(String type) async{
    switch (type) {
      case AppString.user:
        return Fetch_Users();
      case AppString.course:
        return Fetch_Courses();
      case AppString.certificate:
        return Fetch_Certificates();
      case AppString.student:
        return Fetch_Students();
      case AppString.instructor:
        return Fetch_Instructors();
      case AppString.enrollment:
        return Fetch_Enrollments();
      case AppString.section:
        return Fetch_Sections();
      case AppString.lesson:
        return Fetch_Lessons();
      case AppString.quiz:
        return Fetch_Quizzes();
      case AppString.question:
        return Fetch_Questions();
      case AppString.review:
        return Fetch_Reviews();
      case AppString.forum:
        return Fetch_Forum();
      case AppString.post:
        return Fetch_Posts();
      case AppString.payment:
        return Fetch_Payments();
      case AppString.notification:
        return Fetch_Notifications();
      default:
        throw Exception('No fetch class for type: $type');
    }
  }
}

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url:"https://uyijmaytdgepuufiboef.supabase.co" ,
      anonKey:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InV5aWptYXl0ZGdlcHV1Zmlib2VmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjQ1OTA2NTgsImV4cCI6MjA4MDE2NjY1OH0.aXyema8ZpqDadeyz9St3sHp1Svy4otDwCa0bEQOnF9M");
  Test t=Test();
  t.fetchData(AppString.user);
}
