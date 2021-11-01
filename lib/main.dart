

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodistan/auth/autentication.dart';
import 'package:foodistan/restuarant_screens/restaurant_delivery.dart';
import 'bufferScreenFile.dart';
import 'login/mobile number.dart';
import 'login/login.dart';
import 'MainScreenFolder/mainScreenFile.dart';
import 'optionScreenFile.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
     MaterialApp(
    initialRoute: AuthMethod().checkUserLogin() != null ? 'H' : 'L',
    routes: {
      'B': (context) => BufferScreen(),
      'L': (context) => LoginScreen(),
      'H': (context) => MainScreen(),
      'O': (context) => OptionScreen(),
      'LO': (context) => Login(),
      // 'R': (context) => RestaurantDelivery(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
