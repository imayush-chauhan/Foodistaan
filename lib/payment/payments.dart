import 'package:flutter/material.dart';
import 'addnewcard.dart';
import 'addnewupi.dart';

class Payments extends StatelessWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text('Payment: ₹456',style: TextStyle(
              color: Colors.black,
            ),),
            leading: IconButton(onPressed: () {
              Navigator.pop(context);
            },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 11,
                    ),
                    Icon(
                      Icons.restaurant,
                      size: 25,
                      color: Theme.of(context).primaryColor,
                    ),
                    const SizedBox(
                      width: 11,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Anna\'s Hut',style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),),
                        Text('2 items | ETA: 20 mins',style: TextStyle(
                          color: Colors.grey,
                        ),),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 11,
                    ),
                    Icon(
                      Icons.restaurant,
                      size: 25,
                      color: Theme.of(context).primaryColor,
                    ),
                    const SizedBox(
                      width: 11,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Duriyodhan ka Dhaba',style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),),
                        Text('2 items | ETA: 29 mins',style: TextStyle(
                          color: Colors.grey,
                        ),),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 11,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      width: 22.5,
                    ),
                    Text('|',style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),),
                  ],
                ),
                const SizedBox(
                  height: 11,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 11,
                    ),
                    Icon(
                      Icons.home_outlined,
                      size: 25,
                      color: Theme.of(context).primaryColor,
                    ),
                    const SizedBox(
                      width: 11,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Home',style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),),
                        Text('Rohini, New Delhi',style: TextStyle(
                          color: Colors.grey,
                        ),),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 35,
                  width: double.infinity,
                  color: Colors.grey.shade100,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('    Pay On Delivery',style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.5,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.attach_money_sharp,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Cash',style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),),
                        Text('Paying through cash, online payment is\nrecommended to help provide safety against COVID.',style: TextStyle(
                          color: Colors.grey,
                        ),),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 35,
                  width: double.infinity,
                  color: Colors.grey.shade100,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('    Credit/Debit Card',style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.5,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 11,
                    ),
                    Image.asset('assets/cardpayment.png',width: 200,),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const AddnewCard();
                    }),);
                    },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 11,
                      ),
                      Icon(
                        Icons.add_circle_outline,
                        color: Theme.of(context).primaryColor,
                      ),
                      const SizedBox(
                        width: 11,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Add New Card',style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                          ),),
                          const Text('Pay via cards and get exciting offers!',style: TextStyle(
                            color: Colors.grey,
                          ),),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 35,
                  width: double.infinity,
                  color: Colors.grey.shade100,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('    UPI',style: TextStyle(
                        color: Colors.black,
                        fontSize: 22.5,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 11,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 11,
                    ),
                    Image.asset('assets/upipayment.png',width: 150,),
                  ],
                ),
                const SizedBox(
                  height: 11,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) {
                      return const Addnewupi();
                    }),);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        width: 11,
                      ),
                      Icon(
                        Icons.add_circle_outline,
                        color: Theme.of(context).primaryColor,
                      ),
                      const SizedBox(
                        width: 11,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Add New UPI',style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                          ),),
                          const Text('Pay via UPI and get exciting offers!',style: TextStyle(
                            color: Colors.grey,
                          ),),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),);
  }
}
