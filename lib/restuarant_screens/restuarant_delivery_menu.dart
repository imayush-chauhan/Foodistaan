import 'package:flutter/material.dart';
import 'package:foodistan/widgets/food_item_widget.dart';

class RestuarantDeliveryMenu extends StatefulWidget {
  RestuarantDeliveryMenu({Key? key}) : super(key: key);

  @override
  _RestuarantDeliveryMenuState createState() => _RestuarantDeliveryMenuState();
}

class _RestuarantDeliveryMenuState extends State<RestuarantDeliveryMenu> {
  @override
  Widget build(BuildContext context) {
    var itemWidth = MediaQuery.of(context).size.width * 0.4;
    var itemHeight = MediaQuery.of(context).size.height * 0.25;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width * 0.9,
            child: Text("Best Selling Items",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                )),
          ),
          Container(
              child: GridView.count(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            childAspectRatio: (itemWidth / itemHeight),
            crossAxisSpacing: 5,
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            children: const [
              MyFoodItemWidget(),
              MyFoodItemWidget(),
              MyFoodItemWidget(),
              MyFoodItemWidget(),
              MyFoodItemWidget(),
              MyFoodItemWidget(),
              MyFoodItemWidget(),
              MyFoodItemWidget(),
              MyFoodItemWidget(),
              MyFoodItemWidget(),
            ],
          )),
        ],
      ),
    );
  }
}
