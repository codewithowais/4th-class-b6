import 'package:flutter/material.dart';
import 'package:practice_image/views/custom_screen.dart';
import 'package:practice_image/views/dashboard_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const Text(
            "Home Screen",
            style: TextStyle(fontSize: 40),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      CustomScreenWithParams(roundContainerText: "asdjj"),
                ),
              );
            },
            child: const Text("Go to Dashboard Screen"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Go to Contact Screen"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "Go Back",
              style: TextStyle(color: Color(0xff8A9DFF)),
            ),
          ),
        ],
      ),
    );
  }
}
