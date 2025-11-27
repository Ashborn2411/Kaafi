import 'package:flutter/material.dart';

class CustomListTitle extends StatelessWidget {
  const CustomListTitle({
    super.key,
    required this.title,
    required this.icon,
    required this.ontap,
  });

  final String title;
  final IconData icon;
  final VoidCallback ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).splashColor,
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        child: Row(
          children: [
            Icon(icon, size: 20),
            const SizedBox(width: 16), // 16.widthBox replacement
            Text(
              title,
              style: TextStyle(fontSize: 16),
            ), // .text.size(16).make() replacement
          ],
        ),
      ), // .paddingSymmetric() replacement
    );
  }
}
