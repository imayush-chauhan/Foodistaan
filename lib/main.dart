import 'package:flutter/material.dart';
import 'bufferScreenFile.dart';
import 'loginScreenFile.dart';
import 'mainScreenFile.dart';
import 'optionScreenFile.dart';

void main() {
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

