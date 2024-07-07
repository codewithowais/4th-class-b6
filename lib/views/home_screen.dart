import 'package:flutter/material.dart';
import 'package:practice_image/views/about_screen.dart';
import 'package:practice_image/views/chat_screen.dart';
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
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) =>
              //         CustomScreenWithParams(roundContainerText: "asdjj"),
              //   ),
              // );

              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AboutScreen()));
              // Navigator.pushReplacement(context,
              //     MaterialPageRoute(builder: (context) => ChatScreen()));
              // Navigator.pushAndRemoveUntil(
              //     context,
              //     MaterialPageRoute(
              //         builder: (BuildContext context) => ChatScreen()),
              //     ModalRoute.withName('/'));
              // Navigator.pop(context);
            },
            child: const Text("Go to Dashboard Screen"),
          ),
        ],
      ),
    );
  }
}
