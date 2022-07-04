// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:golpo/konstants.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.07,
      width: size.width * 0.75,
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      decoration: BoxDecoration(
          color: klightcolor, borderRadius: BorderRadius.circular(35)),
      child: child,
    );
  }
}
