// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, avoid_unnecessary_containers, use_key_in_widget_constructors, unused_field, unused_element, avoid_print

import 'package:flutter/material.dart';

import 'package:golpo/konstants.dart';

import 'package:golpo/screens/login/accountCreationCheck.dart';
import 'package:golpo/screens/login/background.dart';
import 'package:golpo/screens/login/custombutton.dart';
import 'package:golpo/screens/login/customtextfield.dart';
import 'package:golpo/screens/login/textfieldcontainer.dart';
import 'package:golpo/services/notification_service.dart';

import 'package:google_fonts/google_fonts.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

final _loginformkey = GlobalKey<FormState>();
String? _email;
String? _password;

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    String regexp =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    Size size = MediaQuery.of(context).size;
    Widget child;
    return Background(
      child: SingleChildScrollView(
        child: Form(
          key: _loginformkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Golpo",
                style: GoogleFonts.caveat(
                    textStyle: TextStyle(
                  fontSize: 80,
                  fontFamily: 'Caveat',
                )),
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/images/logo.png",
                height: size.height * 0.14,
              ),
              SizedBox(
                height: 20,
              ),
              TextFieldContainer(
                child: CustomTextField(
                  regEx: regexp,
                  hintText: 'Email',
                  icon: Icon(
                    Icons.person,
                    color: kPrimarycolor,
                  ),
                  obscureText: false,
                  regExAlter: 'Enter A valid Email',
                ),
              ),
              TextFieldContainer(
                  child: CustomTextField(
                regEx: r".{8,}",
                icon: Icon(
                  Icons.key,
                  color: kPrimarycolor,
                ),
                hintText: "Password",
                obscureText: true,
                regExAlter: 'Password must be 8 character long',
              )),
              SizedBox(
                height: 10,
              ),
              CustomButton(
                text: "Login",
                onPressed: () {
                  LocalNotification.popnotification(
                      body: 'Login Successful!', sound: '', title: 'Golpo');
                },
              ),
              SizedBox(
                height: 20,
              ),
              AccountCreationCheck(
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
