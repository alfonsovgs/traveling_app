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
  Widget _buildAvatarInfo(BuildContext context) {
    var style = Theme.of(context).textTheme.title.copyWith(fontSize: 14.0, color: Colors.white);
    var styleButtom = Theme.of(context).textTheme.display1.copyWith(color: Colors.white);

    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(),
              SizedBox(width: 5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Richard H. More", style: style),
                  Text("2 WEEk AGO", style: styleButtom),
                ],
              ),
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.favorite,
                color: Theme.of(context).accentColor,
              ),
              SizedBox(height: 5),
              Icon(
                Icons.bookmark,
                color: Colors.white,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildContentInfo(BuildContext context) {
    var style = Theme.of(context).textTheme.title.copyWith(fontSize: 22.0, color: Colors.white);
    var styleCountry = Theme.of(context).textTheme.display1.copyWith(color: Colors.white);
    double cWidth = MediaQuery.of(context).size.width * 0.6;

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 25,
            child: Icon(
              Icons.play_arrow,
              size: 30,
              color: Theme.of(context).accentColor,
            ),
          ),
          SizedBox(width: 5),
          Container(
            width: cWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Discover the Amsterdam's hidden gems.", style: style),
                Text("AMSTERDAM HOLLAND", style: styleCountry),
                Row(
                  children: <Widget>[
                    Icon(Icons.star, color: Colors.yellowAccent, size: 15),
                    Icon(Icons.star, color: Colors.yellowAccent, size: 15),
                    Icon(Icons.star, color: Colors.yellowAccent, size: 15),
                    Icon(Icons.star, color: Colors.yellowAccent, size: 15),
                    Icon(Icons.star, color: Colors.yellowAccent, size: 15),
                    SizedBox(width: 5),
                    Text("540 km", style: TextStyle(color: Colors.white)),
                  ],
                )
              ],
            ),
          )
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
      child: Stack(
        children: <Widget>[
          _buildAvatarInfo(context),
          Align(
            alignment: Alignment.center,
            child: _buildContentInfo(context),
          )
        ],
      ),
    );
  }
}

class _ToolWidget extends StatelessWidget {
  Widget _buildCustomOption(BuildContext context, IconData icon, String msg, {bool optDefault = false}) {
    var color = optDefault ? Theme.of(context).accentColor : Colors.black87;

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
              _buildCustomOption(context, FontAwesomeIcons.heart, "50.2k", optDefault: true),
              _buildCustomOption(context, FontAwesomeIcons.commentAlt, "490"),
              _buildCustomOption(context, Icons.share, "12"),
            ],
          ),
        ),
      ),
    );
  }
}
