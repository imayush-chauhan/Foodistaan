import 'package:flutter/material.dart';

class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: FittedBox(
        alignment: Alignment.bottomLeft,
        fit: BoxFit.contain,
        child: Row(
          children: [
            Icon(
              Icons.location_on,
              color: Color(0xFFFAB84C),
            ),
            Text("Location", style: TextStyle(color: Color(0xFF0E1829))),
          ],
        ),
      ),
    );
  }
}

class Points extends StatefulWidget {
  @override
  _PointsState createState() => _PointsState();
}

class _PointsState extends State<Points> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: FittedBox(
        fit: BoxFit.contain,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Points", style: TextStyle(color: Color(0xFF0E1829))),
            Icon(
              Icons.money,
              color: Color(0xFFFAB84C),
            ),
          ],
        ),
      ),
    );
  }
}

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    var h1 = MediaQuery.of(context).size.height;
    var w1 = MediaQuery.of(context).size.width;
    return TextButton(
      onPressed: (){},
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Color(0xFFFCE19E),
        ),
        height: h1/15,
        width: 12*w1/13,
        alignment: Alignment.center,

        child: FittedBox(
          fit: BoxFit.contain,
          child: Row(
            children: [
              Icon(
                Icons.search,
                color: Color(0xFF6B6B6B),
              ),
              Text(
                "Search",
                style: TextStyle(
                  color: Color(0xFF6B6B6B),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

