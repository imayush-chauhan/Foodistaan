import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'AppBarFile.dart';
import 'Test.dart';
import 'HomeScreenFile.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  int currentIndex=0;
  var Screens=[
    HomeScreen(), //HomeScreenFile
    BufferScreen(),
    BufferScreen(),
    BufferScreen(),
  ];
  Widget build(BuildContext context) {
    var h1 = MediaQuery.of(context).size.height;
    var w1 = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index)=>setState(()=>currentIndex=index),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Color(0xff0E1829),
        selectedItemColor: Color(0xffFAC05E),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.qr_code_scanner,
            ),
            label: 'Scan',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
            ),
            label: 'Profile',
          ),
        ],
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(h1 / 7), // here the desired height
        child: MainScreenAppBar(),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(child: Screens[currentIndex]),
    );
  }
}
