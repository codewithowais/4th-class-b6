import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice_image/components/custom_listtile_button.dart';
import 'package:practice_image/views/chat_screen.dart';

import '../components/round_corner_container.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
                child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  child: Icon(
                    Icons.person,
                    size: 50,
                  ),
                ),
                Text("sshahzeb"),
              ],
            )),
            CustomListtileButton(
                buttonText: "Chat Screen",
                buttonFunc: () {
                  Navigator.pop(context);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ChatScreen()));
                }),
            CustomListtileButton(
                buttonText: "About",
                buttonFunc: () {
                  print("this is about");
                }),
            ListTile(
              title: Text("Hello"),
            ),
            ListTile(
              title: Text("Hello"),
            ),
            ListTile(
              title: Text("Hello"),
            ),
          ],
        ),
      ),
      appBar: AppBar(),
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
                GestureDetector(
                  onTap: () {
                    print("Hello Abdullah");
                  },
                  child: Image.network(
                      "https://media.istockphoto.com/id/1493574434/photo/car-rushes-along-the-highway-at-sunset-low-angle-side-view.jpg?s=1024x1024&w=is&k=20&c=C6fkK2gq-Ep3pHBcvRU0KHrk86F6c3WzV_ZM6KNonq0="),
                ),
                InkWell(
                    onTap: () {
                      print("Hello Owais");
                    },
                    child: Container(
                      height: 309,
                      width: 309,
                      color: Colors.black.withOpacity(0.2),
                    ))
                // child: Image.asset("assets/images/abc.jpg"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
