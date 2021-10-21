import 'package:flutter/material.dart';
import 'bufferScreenFile.dart';
import 'loginScreenFile.dart';
import 'MainScreenFolder/mainScreenFile.dart';
import 'optionScreenFile.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    initialRoute: 'H',
    routes: {
      'B':(context)=>BufferScreen(),
      'L':(context)=>LoginScreen(),
      'H':(context)=>MainScreen(),
      'O':(context)=>OptionScreen(),
    },
    debugShowCheckedModeBanner: false,
  ));
}

