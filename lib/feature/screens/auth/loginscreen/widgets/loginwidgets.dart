import 'package:flutter/material.dart';

import '../../../../../constant/imageconstant.dart';

class EvalyLogo extends StatelessWidget {
  const EvalyLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: const Image(
          image: AssetImage(ImageCons.logo),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
