import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';

class Listings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var h1 = MediaQuery.of(context).size.height;
    var w1 = MediaQuery.of(context).size.width;
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.fromLTRB(w1 / 30, h1 / 50, w1 / 30, h1 / 50),
          child: ListedTile(),
        );
      },
    );
  }
}

class ListedTile extends StatefulWidget {
  @override
  _ListedTileState createState() => _ListedTileState();
}

class _ListedTileState extends State<ListedTile> {
  int stars=5;
  @override
  Widget build(BuildContext context) {
    var h1 = MediaQuery.of(context).size.height;
    var w1 = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10.0,
              spreadRadius: 0.5,
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(7.0),
                  bottomLeft: Radius.circular(7.0),
                ),
                color: Color(0xffE43B3B),
              ),
              height: h1 / 5,
              width: 3 * w1 / 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(7.0),
                    ),
                    child: Image.asset(
                      "Images/PizzaListing.png",
                      height: 10 * h1 / 62,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                          w1 / 50, h1 / 200, w1 / 50, h1 / 200),
                      child: Row(
                        children: [
                          Text(
                            "Sector - 3, Rohini, Delhi",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            width: w1 / 25,
                          ),
                          Text(
                            "1.5 Km",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height: 10 * h1 / 62,
                  width: w1 / 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(7.0),
                    ),
                    color: Colors.white,
                  ),

                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                        w1 / 50, h1 / 200, w1 / 50, h1 / 200),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              "Pizza Junction",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                        FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              "Fast Food Snacks",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: h1 / 55),
                            )),
                        FittedBox(
                          fit: BoxFit.contain,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: List.generate(stars,(index){
                              return Image.asset(
                                      'Images/RatingStar.png',
                                      height: h1 / 35,
                                      width: w1 / 35,
                                    );
                            })
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "Images/RupeeImage.png",
                              height: h1 / 50,
                            ),
                            SizedBox(
                              width: w1 / 50,
                            ),
                            FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                "Cost for two 300",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: h1 / 55),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "Images/DeliveryImage.png",
                              height: h1 / 50,
                            ),
                            SizedBox(
                              width: w1 / 50,
                            ),
                            Text(
                              "Delivery",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: h1 / 55),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset(
                              "Images/TakeawayImage.png",
                              height: h1 / 50,
                            ),
                            SizedBox(
                              width: w1 / 50,
                            ),
                            Text(
                              "Takeaway",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: h1 / 55),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(

                  height: h1 / 26,
                  width: w1 / 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(7.0),
                    ),
                    color: Color(0xffF7C12B),
                  ),
                  child: FittedBox(
                      fit: BoxFit.contain,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(
                            w1 / 50, h1 / 200, w1 / 50, h1 / 200),
                        child: Text(
                          "Foodistaan Certified",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                      )),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
