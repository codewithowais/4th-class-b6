import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const Text(
            "Dashboard Screen",
            style: TextStyle(fontSize: 40),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Go to Contact Screen"),
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
