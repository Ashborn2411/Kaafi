import 'package:firstapp/constants/assetspaths.dart';
import 'package:firstapp/constants/strings.dart';
import 'package:firstapp/intro_screen/pages_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';


final GlobalKey<ScaffoldState> homeScaffoldKey = GlobalKey<ScaffoldState>();
final GlobalKey<ScaffoldState> accountScaffoldKey = GlobalKey<ScaffoldState>();
final GlobalKey<ScaffoldState> cartScaffoldKey = GlobalKey<ScaffoldState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  debugPaintSizeEnabled = false;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: PagesLoader(
        dotlottieAssets: Assetspaths.assetspaths,
        titles: AppStrings.titles,
        textStyle: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(255, 112, 63, 247),
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
