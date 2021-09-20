import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  return HomeScreen();
                }),
            IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {}),
            IconButton(icon: Icon(Icons.scanner), onPressed: () {}),
            IconButton(icon: Icon(Icons.account_circle), onPressed: () {}),
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(2.0), // here the desired height
        child: AppBar(
          backgroundColor: Color(0xFFFAB84C),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(child: HomeScreen()),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Row(
            children: [
              Expanded(
                  flex: 3,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Icon(
                              Icons.location_on,
                              color: Color(0xFFFAB84C),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: Text("Location",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xFF0E1829), fontSize: 20)),
                          ),
                        ],
                      ))),
              Expanded(
                flex: 1,
                child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Text(
                            "Points",
                            style: TextStyle(
                                color: Color(0xFF0E1829), fontSize: 20),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Icon(Icons.money, color: Color(0xFFFAB84C))),
                      ],
                    )),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
            child: TextButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Color(0xFFFCE19E))),
              child: Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Row(
                  children: [
                    Icon(Icons.search, color: Color(0xFF6B6B6B)),
                    Text(
                      "Search",
                      style: TextStyle(color: Color(0xFF6B6B6B), fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 12,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: CarouselSlider(
                    items: [
                      Offers(offerImagePath: 'Images/banner.png'),
                      Offers(offerImagePath: 'Images/banner.png'),
                      Offers(offerImagePath: 'Images/banner.png'),
                      Offers(offerImagePath: 'Images/banner.png'),
                    ],
                    //carouselController: buttonCarouselController,
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                      height: 180.0,
                      viewportFraction: 0.8,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: FoodCategories(
                          ImagePath: 'Images/food-trolley.png',
                          Caption: 'Street Style'),
                    ),
                    Expanded(
                      flex: 1,
                      child: FoodCategories(
                          ImagePath: 'Images/tiffin.png',
                          Caption: 'Tiffin Services'),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 5, 5, 10),
                  child: Text(
                    "Order by Cuisines",
                    style: TextStyle(
                        color: Color(0xFF0F1B2B),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 100.0,
                  child: ListView.builder(
                    physics: ClampingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Cuisines(
                        Text1: "Burger",
                        Text2: "Bomb",
                        FoodImage: "Images/burger.png",
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class FoodCategories extends StatefulWidget {
  String ImagePath = "";
  String Caption = "";
  FoodCategories({@required this.ImagePath, @required this.Caption});
  @override
  _FoodCategoriesState createState() =>
      _FoodCategoriesState(ImagePath: ImagePath, Caption: Caption);
}

class _FoodCategoriesState extends State<FoodCategories> {
  String ImagePath = "";
  String Caption = "";
  _FoodCategoriesState({@required this.ImagePath, @required this.Caption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 15, 15, 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: Colors.black, // red as border color
            width: 2,
          ),
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            primary: Color(0xFFFFFFFF),
            //minimumSize: Size(80, 80),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 5, 8, 5),
                child: Image(image: AssetImage(ImagePath)),
              ),
              Text(
                Caption,
                style: TextStyle(color: Color(0xFF1E2019)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Offers extends StatelessWidget {
  String offerImagePath = "";
  Offers({@required this.offerImagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(10.0),
        image: DecorationImage(
          image: AssetImage(offerImagePath),
          //fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class Cuisines extends StatelessWidget {
  String Text1 = "";
  String Text2 = "";
  String FoodImage = "";
  int BgColor = 0xFFFFE7E7;
  int BorderColor = 0xFFF03636;

  Cuisines(
      {@required this.Text1,
      @required this.Text2,
      @required this.FoodImage,
      this.BorderColor,
      this.BgColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 5, 8, 0),
      child: Container(
        //height:85,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Color(0xFFFFE7E7),
            border: Border.all(
              color: Color(0xFFF03636), // red as border color
              width: 2,
            )),
        child: GestureDetector(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 5, 2, 0),
                child: Text(
                  Text1,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 2, 0),
                child: Text(Text2,
                    style: TextStyle(
                        color: Color(0xFFF03636),
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    textAlign: TextAlign.left),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                child: Image.asset(FoodImage),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
