import 'package:flutter/material.dart';

class Auth_text_field extends StatelessWidget {
  final String labeltext;
  final String hinttext;
  final bool obscure;
  final IconData icondata;
  const Auth_text_field({
    super.key,
    required this.hinttext,
    required this.labeltext,
    this.obscure = false,
    required this.icondata,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: labeltext,
          labelStyle: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
          hintText: hinttext,
          hintStyle: TextStyle(color: Colors.grey.shade500),
          prefixIcon: Icon(icondata),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
