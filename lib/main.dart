import 'package:firstapp/LocalStorage/smallStorage.dart';
import 'package:firstapp/constants/assetspaths.dart';
import 'package:firstapp/constants/strings.dart';
import 'package:firstapp/database_supabase/DataBase_Service/CenterDataBase/Database_service.dart';
import 'package:firstapp/feature/screens/shop/home/homescreen.dart';
import 'package:firstapp/intro_screen/pages_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:supabase_flutter/supabase_flutter.dart';



Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  debugPaintSizeEnabled = false;
  await Supabase.initialize(url:"https://uyijmaytdgepuufiboef.supabase.co" ,
      anonKey:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InV5aWptYXl0ZGdlcHV1Zmlib2VmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjQ1OTA2NTgsImV4cCI6MjA4MDE2NjY1OH0.aXyema8ZpqDadeyz9St3sHp1Svy4otDwCa0bEQOnF9M");
  await DatabaseService.instance.initialize();
  GetStorage.init();
  Get.put(SmallStorage());
  await SmallStorage.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SmallStorage instance=SmallStorage.instance;
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:(instance.box.read("login")==null)?PagesLoader(
          dotlottieAssets: Assetspaths.assetspaths,
          titles: AppStrings.titles,
          textStyle: GoogleFonts.openSans(
              textStyle:TextStyle(fontWeight: FontWeight.bold,fontSize: 24)
          )
      ):HomeScreen(),
    );
  }
}

