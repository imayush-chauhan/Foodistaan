import 'package:flutter/material.dart';

class Listing extends StatelessWidget {
  const Listing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Search',style: TextStyle(
          color: Colors.black,
        ),),
        centerTitle: true,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 25,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration:  BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(
                      width: 15,
                    ),
                    Text('Icecream',style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  width: 10,
                ),
                Text('15 Search Results Found',style: TextStyle(
                  color: Colors.black,
                ),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  width: 10,
                ),
                Text('Showing Results For Icecream',style: TextStyle(
                  color: Colors.grey,
                ),),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Image.asset('assets/listing.png',width: double.infinity,),
            Image.asset('assets/listing.png',width: double.infinity,),
            Image.asset('assets/listing.png',width: double.infinity,),
            Image.asset('assets/listing.png',width: double.infinity,),
            Image.asset('assets/listing.png',width: double.infinity,),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                height: 50,
                width: double.infinity,
                decoration:  BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: const Center(
                  child: Text('See 11 More Results'),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
