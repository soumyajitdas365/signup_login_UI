// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:golpo/konstants.dart';

class RecentChatsPage extends StatelessWidget {
  const RecentChatsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimarycolor,
        title: Text(
          "Chats",
          style: TextStyle(fontSize: 25),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 33,
            ),
          )
        ],
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
