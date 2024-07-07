import 'package:flutter/material.dart';

class CustomListtileButton extends StatelessWidget {
  final String buttonText;
  final Function buttonFunc;
  const CustomListtileButton(
      {super.key, required this.buttonText, required this.buttonFunc});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        buttonFunc();
      },
      child: ListTile(
        title: Text(buttonText),
      ),
    );
  }
}
