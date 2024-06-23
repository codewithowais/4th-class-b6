import 'package:flutter/material.dart';

import '../components/round_corner_container.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          // color: Colors.red,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Hello World",
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blue,
                  ),
                  title: Text("Hello"),
                  subtitle: Text("xyz........."),
                  trailing: CircleAvatar(
                    backgroundColor: Colors.green,
                  ),
                ),
                RoundCornerContainerCustom(roundContainerText: "Shahzeb"),
                RoundCornerContainerCustomFun("Owais"),
                Image.network(
                    "https://media.istockphoto.com/id/1493574434/photo/car-rushes-along-the-highway-at-sunset-low-angle-side-view.jpg?s=1024x1024&w=is&k=20&c=C6fkK2gq-Ep3pHBcvRU0KHrk86F6c3WzV_ZM6KNonq0="),
                Image.asset("assets/images/abc.jpg")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
