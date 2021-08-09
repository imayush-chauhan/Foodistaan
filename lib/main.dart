import 'package:flutter/material.dart';
import 'bufferScreenFile.dart';
import 'loginScreenFile.dart';
import 'mainScreenFile.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: 'B',
    routes: {
      'B':(context)=>BufferScreen(),
      'L':(context)=>LoginScreen(),
      'H':(context)=>MainScreen()
    },
    debugShowCheckedModeBanner: false,
  ));
}

