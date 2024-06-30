import 'package:flutter/material.dart';

class CustomScreenWithParams extends StatelessWidget {
  String roundContainerText;
  CustomScreenWithParams({super.key, required this.roundContainerText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(20),
        height: 200,
        width: 200,
        child: Text(
          roundContainerText,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        decoration: BoxDecoration(
            color: Colors.deepPurple,
            border: Border.all(color: Colors.black, width: 10),
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            )),
      ),
    );
  }
}
