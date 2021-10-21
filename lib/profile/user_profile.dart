import 'package:flutter/material.dart';
import 'profile_bookmarks.dart';
import 'payment_methods.dart';
import 'profile_address.dart';
import 'foodistaan_pro.dart';
import 'profile_help.dart';
import 'your_orders.dart';
import 'settings.dart';
import 'offers.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          // title: const Icon(
          //   Icons.notifications,
          //   color: Colors.black,
          //   size: 27,
          // ),
          leading: const IconButton(onPressed: null,
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
              size: 25,
            ),),
          actions: const [
            IconButton(onPressed: null,
              icon: Icon(Icons.search,
                color: Colors.black,),),
            IconButton(onPressed: null,
              icon: Icon(Icons.share,
                color: Colors.black,),),
          ],
        ),
        body: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/profilepage.png',
                  width: double.infinity,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 115,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('    Mansimar Singh',style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                          ),),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            height: 60,
                            width: double.infinity,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(255, 206, 69, 0.69),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(22),
                                bottomLeft: Radius.circular(22),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 50,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('Email@xyz.com',style: TextStyle(
                                      color: Colors.grey,
                                    ),),
                                    SizedBox(
                                      height: 3,
                                    ),
                                    Text('98765*****',style: TextStyle(
                                      color: Colors.grey,
                                    ),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: 35,
                                child: Image.asset('assets/profilepic.png'),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Text('Edit'),
                              SizedBox(
                                width: 37.5,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) {
                            return const Bookmarks();
                          }),);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(Icons.bookmark_outline,
                              color: Colors.black,
                              size: 27,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Bookmarks',style: TextStyle(
                              color: Colors.black,
                            ),),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) {
                            return const Offers();
                          }),);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(Icons.notifications_none_outlined,
                              color: Colors.black,
                              size: 27,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Notifications',style: TextStyle(
                              color: Colors.black,
                            ),),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) {
                            return const Settings();
                          }),);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(Icons.settings,
                              color: Colors.black,
                              size: 27,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Settings',style: TextStyle(
                              color: Colors.black,
                            ),),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) {
                            return const Payments();
                          }),);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            Icon(Icons.payment_outlined,
                              color: Colors.black,
                              size: 27,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('Payments',style: TextStyle(
                              color: Colors.black,
                            ),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 11),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const Orders();
                    }),);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.history,
                        color: Colors.black,
                        size: 22,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Order History',style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),),
                    ],
                  ),
                ),const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 11),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const Address();
                    }),);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.contacts_outlined,
                        color: Colors.black,
                        size: 22,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Saved Address Book',style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                      ),),
                    ],
                  ),
                ),const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 11),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const Pro();
                    }),);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.star_border,
                        color: Colors.black,
                        size: 22,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('About Foodistaan Pro',style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                      ),),
                    ],
                  ),
                ),const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 11),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const Offers();
                    }),);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.celebration,
                        color: Colors.black,
                        size: 22,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Offers & Deals of the Day',style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                      ),),
                    ],
                  ),
                ),const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 11),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const Help();
                    }),);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.help_outline,
                        color: Colors.black,
                        size: 22,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Help',style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                      ),),
                    ],
                  ),
                ),const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 11),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
