import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodistan/cart_screens/address_pay_cart_screen_main.dart';
import 'package:foodistan/restuarant_screens/restaurant_delivery.dart';
import 'bufferScreenFile.dart';
import 'login/mobile number.dart';
import 'loginScreenFile.dart';
import 'MainScreenFolder/mainScreenFile.dart';
import 'optionScreenFile.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    initialRoute: FirebaseAuth.instance.currentUser?.uid != null ? 'H' : 'LO',
    routes: {
      'B': (context) => BufferScreen(),
      'L': (context) => LoginScreen(),
      'H': (context) => MainScreen(),
      'O': (context) => OptionScreen(),
      'LO': (context) => Login(),
      'R': (context) => RestaurantDelivery(),
      'C': (context) => CartScreenMainLogin(),
    },
    debugShowCheckedModeBanner: false,
  ));
}
