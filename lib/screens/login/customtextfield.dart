// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final String regEx;
  final String hintText;
  final bool obscureText;
  final Icon icon;
  final String regExAlter;

  const CustomTextField({
    required this.regEx,
    required this.icon,
    required this.hintText,
    required this.obscureText,
    required this.regExAlter,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.raleway(
            textStyle: const TextStyle(fontWeight: FontWeight.bold)),
        icon: icon,
      ),
      validator: (_value) {
        return RegExp(regEx).hasMatch(_value!) ? null : regExAlter;
      },
    );
  }
}
