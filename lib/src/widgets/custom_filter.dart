import 'package:flutter/material.dart';

class CustomFilter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      height: 70,
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
          color: Color(0xFF424242),
          borderRadius: BorderRadius.circular(35),
        ),
        child: Center(
          child: Text(
            "Amsterdam",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
