// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:golpo/konstants.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  const CustomButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
        margin: const EdgeInsets.symmetric(vertical: 5),
        width: size.width * 0.5,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: kPrimarycolor,
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 20),
            ),
            child: Text(
              text,
              style: GoogleFonts.robotoMono(
                  textStyle: const TextStyle(fontWeight: FontWeight.bold)),
            ),
            onPressed: () => onPressed(),
          ),
        ));
  }
}
