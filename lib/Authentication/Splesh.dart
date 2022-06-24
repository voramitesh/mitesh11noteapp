import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mitesh11noteapp/Screen/Homescreen.dart';
import 'package:mitesh11noteapp/Screen/LoginScreen.dart';
import 'package:mitesh11noteapp/Screen/auth.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({Key? key}) : super(key: key);

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  Widget build(BuildContext context) {
    Check(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.green,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.event_note_outlined,
                color: Colors.white,
                size: 120,
              ),
              SizedBox(height: 10),
              Text(
                "Note Keeper",
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              SizedBox(
                height: 10,
              ),
              CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}

void Check(BuildContext context) {
  if (Auth().CurrentUser(context) == true) {
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (C) {
              return HomePage();
            },
          ),
        );
      },
    );
  } else {
    Timer(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (C) {
              return LoginScreen();
            },
          ),
        );
      },
    );
  }
}
