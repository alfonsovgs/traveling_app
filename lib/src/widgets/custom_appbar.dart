import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  final double barHeight = 66.0;

  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;

    return Container(
      padding: new EdgeInsets.only(top: statusBarHeight),
      height: statusBarHeight + barHeight,
      decoration: BoxDecoration(color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Icon(FontAwesomeIcons.bars),
          RichText(
            text: TextSpan(
              style: const TextStyle(
                color: Colors.black87,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 36.0,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "t",
                  style: TextStyle(color: Colors.blueAccent),
                ),
                TextSpan(
                  text: "ravelingg",
                ),
              ],
            ),
          ),
          Icon(FontAwesomeIcons.search),
        ],
      ),
    );
  }
}
