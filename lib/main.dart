import 'package:flutter/material.dart';
import 'profile/user_profile.dart';
import 'restaurant/listing.dart';
import 'cart/cart_address.dart';
import 'payment/payments.dart';

void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Foodistaan',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(247, 193, 43, 1),
        accentColor: const Color.fromRGBO(247, 193, 43, 1),
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final List<Widget> pages = [
    const Homescreen(),
    const Cartscreen(),
    const Scanscreen(),
    const UserProfile(),
  ];

  var pageindex = 3 ;

  void showpage(int index) {
    setState(() {
      pageindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code_scanner),
            label: 'Scan',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white70,
        elevation: 0,
        iconSize: 25,
        selectedItemColor: Colors.yellow,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey[800],
        currentIndex: pageindex,
        onTap: showpage,
      ),
      body: pages[pageindex],
      backgroundColor: Colors.white,
    );
  }
}

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return const CartAddress();
              }),);
            },
            child: const Text('Cart Address',style: TextStyle(
              color: Colors.red,
              fontSize: 25,
            ),),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return const Listing();
              }),);
            },
            child: const Text('Listings',style: TextStyle(
              color: Colors.red,
              fontSize: 25,
            ),),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return const Payments();
              }),);
            },
            child: const Text('Payments',style: TextStyle(
              color: Colors.red,
              fontSize: 25,
            ),),
          ),
        ],
      ),
    );
  }
}

class Cartscreen extends StatelessWidget {
  const Cartscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Cart !'),
    );
  }
}

class Scanscreen extends StatelessWidget {
  const Scanscreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Scan !'),
    );
  }
}
