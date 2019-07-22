import 'package:flutter/material.dart';
import 'package:travelingg_app/src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Color(0xFF5c6bc0),
        buttonColor: Color(0xFF5c6bc0),
        textTheme: TextTheme(
          headline: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          title: TextStyle(fontSize: 36.0, fontFamily: 'Poppins', fontWeight: FontWeight.w600),
          display1: TextStyle(fontSize: 12.0, fontFamily: 'Poppins'),
        ),
      ),
      home: HomePage(),
    );
  }
}
