import 'package:firstapp/constants/assetspaths.dart';
import 'package:firstapp/intro_screen/IntorScreen.dart';
import 'package:flutter/material.dart';

class PagesLoader extends StatelessWidget {
  final List<String>dotlottieAssets;
  final List<String>titles;
  final TextStyle textStyle;
  const PagesLoader({super.key, required this.dotlottieAssets, required this.titles, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    final List<String> assetpaths = dotlottieAssets;
    final List<String> titlepaths = titles;
    return PageView(
      children: [
        for (int i = 0; i < assetpaths.length; i++)
          IntoScreen(imagepath: assetpaths[i],
            title: titlepaths[i],
            textStyle: textStyle,value: (i==assetpaths.length-1)?true:false,),
      ],
    );
  }
}
