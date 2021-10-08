import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'LocationPointsSearch.dart';

class MainScreenAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var h1 = MediaQuery.of(context).size.height;
    var w1 = MediaQuery.of(context).size.width;
    return Column(children: [
      Container(
        height: h1/45,
        color: Color(0xFFFAB84C),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(w1 / 70, h1 / 70, w1 / 70, 0),
        child: Container(
          height: h1 / 20,
          width: w1,
          child: Row(
            children: [
              Expanded(flex: 3, child: Location()),
              Expanded(flex: 1, child: Points()),
            ],
          ),
        ),
      ),
      Search(),
    ]);
  }
}
