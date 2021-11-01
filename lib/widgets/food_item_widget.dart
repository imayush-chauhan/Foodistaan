import 'package:flutter/material.dart';
import 'dart:math' as math;

class MyFoodItemWidget extends StatefulWidget {
  static String id = 'my_food_widget';
  const MyFoodItemWidget({Key? key}) : super(key: key);

  @override
  _MyFoodItemWidgetState createState() => _MyFoodItemWidgetState();
}

class _MyFoodItemWidgetState extends State<MyFoodItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Container(
          color: Colors.white,
          width: MediaQuery.of(context).size.width * 0.48,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset('assets/images/icecream.png'),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text("Tandoori Kurkure  ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                )),
                            Text("(Chef Special)",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                )),
                          ],
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 10),
                            child: Image.asset('assets/images/green_sign.png')),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      width: MediaQuery.of(context).size.width * 0.35,
                      child: const Text(
                          "Waffle with a twist of blueberry, and a punch of icecream",
                          style: TextStyle(fontSize: 8)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text("Earn upto 200 FS points",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 6,
                          )),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text("Rs 200",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 8,
                          )),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.55,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.12,
                              height: MediaQuery.of(context).size.height * 0.03,
                              color: Colors.red,
                              child: const TextButton(
                                  onPressed: null,
                                  child: Center(
                                    child: Text(
                                      "Add",
                                      style: TextStyle(
                                          fontSize: 8, color: Colors.white),
                                    ),
                                  )),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
