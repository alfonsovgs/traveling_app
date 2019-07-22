import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cardWidth = size.width - 50;
    var cardSize = 250.0;

    return Container(
      height: cardSize,
      width: cardWidth,
      child: Stack(
        children: <Widget>[
          _ContentCard(),
          Align(
            alignment: Alignment.bottomCenter,
            child: _ToolWidget(),
          )
        ],
      ),
    );
  }
}

class _ContentCard extends StatelessWidget {
  Widget _buildAvatarInfo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cardWidth = size.width - 50;
    var cardSize = 250.0;
    return Container(
      height: cardSize - 20,
      width: cardWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.blue,
        image: DecorationImage(
          image: AssetImage('assets/images/amsterdan2.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: _buildAvatarInfo(),
    );
  }
}

class _ToolWidget extends StatelessWidget {
  Widget _buildCustomOption(IconData icon, String msg, {bool optDefault = false}) {
    var color = optDefault ? Colors.blueAccent : Colors.black87;

    return Row(
      children: <Widget>[
        Icon(icon, size: 15, color: color),
        SizedBox(width: 5),
        Text(msg, style: TextStyle(color: color)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var cardWidth = size.width - 150;
    const height = 60.0;

    return Container(
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          height: height,
          width: cardWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _buildCustomOption(FontAwesomeIcons.heart, "50.2k", optDefault: true),
              _buildCustomOption(FontAwesomeIcons.commentAlt, "490"),
              _buildCustomOption(Icons.share, "12"),
            ],
          ),
        ),
      ),
    );
  }
}
