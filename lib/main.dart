

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mitesh11noteapp/Authentication/Splesh.dart';
import 'package:mitesh11noteapp/Screen/CreatNote.dart';
import 'package:mitesh11noteapp/Screen/Homescreen.dart';
import 'package:mitesh11noteapp/Screen/LoginScreen.dart';
import 'package:mitesh11noteapp/Screen/SignupScreen.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SpleshScreen(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignUp(),
        '/home': (context) => HomePage(),
        '/note':(context)=>CreatNote(),
      },
    ),
  );
}