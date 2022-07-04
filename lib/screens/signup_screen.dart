// ignore_for_file: prefer_const_constructors, unnecessary_string_escapes, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, unused_import, unused_field, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import 'package:golpo/konstants.dart';

import 'package:golpo/screens/SignUp/background.dart';

import 'package:golpo/screens/login/accountCreationCheck.dart';
import 'package:golpo/screens/login/custombutton.dart';
import 'package:golpo/screens/login/customtextfield.dart';
import 'package:golpo/screens/login/textfieldcontainer.dart';
import 'package:golpo/screens/login_screen.dart';

import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage();

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Form(
            child: Column(
              children: [
                Text(
                  "Golpo",
                  style: GoogleFonts.caveat(
                    textStyle: TextStyle(
                      fontSize: 80,
                      fontFamily: 'Caveat',
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "assets/images/logo.png",
                  height: size.height * 0.1,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFieldContainer(
                  child: CustomTextField(
                    regEx:
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                    icon: Icon(Icons.mail, color: kPrimarycolor),
                    hintText: "First Name",
                    obscureText: false,
                    regExAlter: '',
                  ),
                ),
                TextFieldContainer(
                  child: CustomTextField(
                    regEx:
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                    icon: Icon(Icons.mail, color: kPrimarycolor),
                    hintText: "Last Name",
                    obscureText: false,
                    regExAlter: 'Enter a valid Email',
                  ),
                ),
                TextFieldContainer(
                  child: CustomTextField(
                    regEx:
                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                    icon: Icon(Icons.mail, color: kPrimarycolor),
                    hintText: "Email",
                    obscureText: false,
                    regExAlter: 'Enter a valid Email',
                  ),
                ),
                TextFieldContainer(
                  child: CustomTextField(
                    regEx: r".{8,}",
                    icon: Icon(Icons.key, color: kPrimarycolor),
                    hintText: "Password",
                    obscureText: false,
                    regExAlter: 'Password must be 8 character long',
                  ),
                ),
                CustomButton(
                    text: "Sign Up",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    }),
                SizedBox(
                  height: 10,
                ),
                AccountCreationCheck(
                  login: false,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
