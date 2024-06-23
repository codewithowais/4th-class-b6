import 'package:flutter/material.dart';
import 'package:practice_image/components/round_corner_container.dart';
import 'package:practice_image/utils/color_constants.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});
  // List myList = [
  //   {"name": "", "rollNo": ""}
  // ];
  TextEditingController usernameController = TextEditingController();
  void printusername() {
    if (usernameController.text != "") {
      print(usernameController.text);
      print("hello world button");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: usernameController,
                onChanged: (a) {
                  print(a);
                },
              ),
              TextButton(
                onPressed: () {},
                child: Text("data"),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  printusername();
                },
                label: Text("data"),
                icon: Text("+"),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.card_travel,
                  color: primaryColor,
                ),
              )
            ],
          ),
        )
        // ListView.builder(
        //   itemCount: 10,
        //   itemBuilder: (context, index) {
        //     return RoundCornerContainerCustom(roundContainerText: "Hello $index");
        //   },
        // ),
        );
  }
}
