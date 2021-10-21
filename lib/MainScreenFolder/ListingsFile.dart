import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

List items = [];
fetchData() async {
  final CollectionReference StreetFoodList =
      FirebaseFirestore.instance.collection('DummyData');
  try {
    await StreetFoodList.get().then((querySnapshot) => {
          querySnapshot.docs.forEach((element) {
            items.add(element.data());
            //print(items[0]['Name']);
          })
        });
  } catch (e) {
    print(e.toString());
  }
}

class Listings extends StatefulWidget {
  @override
  _ListingsState createState() => _ListingsState();
}

class _ListingsState extends State<Listings> {
  @override

  @override
  Widget build(BuildContext context) {
    var h1 = MediaQuery.of(context).size.height;
    var w1 = MediaQuery.of(context).size.width;
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.fromLTRB(w1 / 30, h1 / 50, w1 / 30, h1 / 50),
          child: ListedTile(details: items[index]),
        );
      },
    );
  }
}

class ListedTile extends StatefulWidget {
  var details;
  ListedTile({this.details});
  @override
  _ListedTileState createState() =>
      _ListedTileState(StreetFoodDetails: details);
}

class _ListedTileState extends State<ListedTile> {
  var StreetFoodDetails;
  _ListedTileState({this.StreetFoodDetails});
  @override
  Widget build(BuildContext context) {
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
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            leftSide(foodImage: StreetFoodDetails['FoodImage'],address: StreetFoodDetails['Address'],),
            rightSide(name: StreetFoodDetails['Name'],cuisines:StreetFoodDetails['Cuisines'],stars:StreetFoodDetails['Stars'],cost:StreetFoodDetails['Cost'],delivery: StreetFoodDetails['Delivery'],takeaway: StreetFoodDetails['Takeaway'],foodistaanCertified:StreetFoodDetails['FoodistaanCertified'] ,),
          ],
        ),
      ),
    );
  }
}

class leftSide extends StatelessWidget {
  String foodImage;
  String address;
  leftSide({this.foodImage,this.address});
  @override
  Widget build(BuildContext context) {
    var h1 = MediaQuery.of(context).size.height;
    var w1 = MediaQuery.of(context).size.width;
    return Container(
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
            child: Image.network(
              foodImage,
              height: 10 * h1 / 62,
              fit: BoxFit.fitWidth,
            ),
          ),
          Container(
            height: h1 / 26,
            width: w1 / 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(7.0),
              ),
              color: Color(0xffE43B3B),
            ),
            child: FittedBox(
                fit: BoxFit.contain,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      w1 / 50, h1 / 200, w1 / 50, h1 / 200),
                  child: Text(
                    address,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                )),
          )
        ],
      ),
    );
  }
}

class rightSide extends StatelessWidget {
  String name;
  String cuisines;
  int stars;
  int cost;
  bool delivery;
  bool takeaway;
  bool foodistaanCertified;

  rightSide({this.name,this.cuisines,this.stars,this.cost,this.delivery,this.takeaway,this.foodistaanCertified});
  @override
  Widget build(BuildContext context) {
    var h1 = MediaQuery.of(context).size.height;
    var w1 = MediaQuery.of(context).size.width;
    return Column(
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
                      name,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
                FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      cuisines,
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w500,
                          fontSize: h1 / 55),
                    )),
                FittedBox(
                  fit: BoxFit.contain,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(
                          stars, (index) {
                        return Image.asset(
                          'Images/RatingStar.png',
                          height: h1 / 35,
                          width: w1 / 35,
                        );
                      })),
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
                        "Cost for two:" +
                            cost.toString(),
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: h1 / 55),
                      ),
                    ),
                  ],
                ),
                delivery==true?Row(
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
                ):SizedBox(),
                takeaway==true?Row(
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
                ):SizedBox(),
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
            color: foodistaanCertified==true?Color(0xffF7C12B):Colors.white,
          ),
          child: FittedBox(
              fit: BoxFit.contain,
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                    w1 / 50, h1 / 200, w1 / 50, h1 / 200),
                child: Text(
                  "Foodistaan Certified",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w900),
                ),
              )),
        )
      ],
    );
  }
}


