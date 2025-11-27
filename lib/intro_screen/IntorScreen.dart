import 'package:dotlottie_loader/dotlottie_loader.dart';
import 'package:firstapp/auth/login/view/login_view.dart';
import 'package:firstapp/constants/assetspaths.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

class IntoScreen extends StatelessWidget {
  final String imagepath;
  final String title;
  final TextStyle textStyle;
  final bool value;
  const IntoScreen({
    super.key,
    required this.imagepath,
    required this.title,
    required this.textStyle,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final String imgpath = imagepath;
    final String ttl = title;
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: (value)
          ? FloatingActionButton(
              focusColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              tooltip: "Click here to go login page",
              foregroundColor: Colors.white,
              backgroundColor: Colors.deepPurpleAccent,
              onPressed: () => Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginView()),
              ),
              child: Icon(Icons.arrow_forward),
            )
          : null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DotLottieLoader.fromAsset(
              imgpath,
              frameBuilder: (BuildContext ctx, DotLottie? dotlottie) {
                if (dotlottie != null) {
                  return Lottie.memory(dotlottie.animations.values.single);
                } else {
                  return Container();
                }
              },
              errorBuilder: (ctx, ob, e) {
                if (kDebugMode) {
                  print(e.toString());
                }
                return Image.asset(Assetspaths.wrong, fit: BoxFit.fill);
              },
            ),
            Text(ttl, style: textStyle),
          ],
        ),
      ),
    );
  }
}
