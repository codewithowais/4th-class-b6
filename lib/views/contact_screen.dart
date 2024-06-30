import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const Text("Contact Screen"),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Go to Dashboard Screen"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Go to Home Screen"),
          )
        ],
      ),
    );
  }
}
