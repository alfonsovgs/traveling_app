import 'package:flutter/material.dart';
import 'package:travelingg_app/src/widgets/card_view.dart';
import 'package:travelingg_app/src/widgets/custom_appbar.dart';
import 'package:travelingg_app/src/widgets/custom_filter.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          CustomAppBar(),
          CustomFilter(),
          SizedBox(height: 20),
          CardView(),
        ],
      ),
    );
  }
}
