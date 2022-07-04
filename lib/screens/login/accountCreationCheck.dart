// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import, file_names

import 'package:flutter/material.dart';
import 'package:golpo/konstants.dart';
import 'package:golpo/screens/signup_screen.dart';

import '../login_screen.dart';

class AccountCreationCheck extends StatelessWidget {
  final bool login;
  final Function onTap;
  const AccountCreationCheck({
    Key? key,
    this.login = true,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // onTap() {
    //   if (login == true) {
    //     Navigator.push(
    //       context,
    //       MaterialPageRoute(
    //         builder: (context) {
    //           return SignUpPage();
    //         },
    //       ),
    //     );
    //   }
    //   if (login == false) {
    //     Navigator.push(context, MaterialPageRoute(
    //       builder: (context) {
    //         return LoginPage();
    //       },
    //     ));
    //   }
    // }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? "Don't Have an Account?" : " Already Have an Account?",
          style: const TextStyle(fontSize: 18, color: kSecondarycolor),
        ),
        GestureDetector(
          onTap: () => onTap(),
          child: Text(
            login ? " Sign Up" : " Sign In",
            style: const TextStyle(
                textBaseline: TextBaseline.alphabetic,
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: kPrimarycolor),
          ),
        )
      ],
    );
  }
}
