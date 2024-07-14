import 'package:flutter/material.dart';
import 'package:practice_image/views/about_screen.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController taskControl = TextEditingController();
  List myTodo = [
    {"name": "Flutter Class", "time": "12 - 3"},
  ];
  addToTodo() {
    if (taskControl.text != "") {
      setState(() {
        myTodo.add({"name": "${taskControl.text}", "time": "12 - 3"});
        print(myTodo);
        // taskControl.clear();
      });
    } else {
      print("your Field is empty");
    }
  }

  @override
  void initState() {
    print("THis is Calling by Abdullah");
    // Future.delayed(
    //   Duration(seconds: 5),
    //   () {
    //     print("Hi  Abdullah");
    //     Navigator.pushReplacement(
    //         context, MaterialPageRoute(builder: (context) => AboutScreen()));
    //   },
    // );
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print("THis is Calling by shahzeb");
    super.dispose();
  }

  bool expanded = true;

  @override
  Widget build(BuildContext context) {
    print("hellow");
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.access_alarm_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: "hero-tag",
              child: CircleAvatar(
                radius: 79,
                child: Icon(
                  Icons.person,
                  size: 79,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  expanded = !expanded;
                });
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                curve: Curves.bounceIn,
                height: expanded ? 100 : 200,
                width: expanded ? 100 : 200,
                decoration: BoxDecoration(
                    color: expanded ? Colors.blue : Colors.red,
                    borderRadius: expanded
                        ? BorderRadius.all(Radius.circular(0))
                        : BorderRadius.all(Radius.circular(100))),
                child: FlutterLogo(),
              ),
            ),

            // GestureDetector(
            //   onTap: () {
            //     setState(() {
            //       expanded = !expanded;
            //     });
            //   },
            //   child: AnimatedContainer(
            //     decoration: BoxDecoration(
            //       color: expanded ? Colors.blue : Colors.black,
            //     ),
            //     width: expanded ? 200 : 300,
            //     height: expanded ? 200 : 300,
            //     duration: Duration(seconds: 1),
            //     curve: Curves.fastOutSlowIn,
            //   ),
            // ),
            TextField(
              minLines: 3,
              maxLines: 5,
              controller: taskControl,
            ),
            ElevatedButton(
              onPressed: () {
                addToTodo();
              },
              child: Text("Add"),
            ),
            // Container(
            //   height: 20,
            //   child: ListView.builder(
            //       scrollDirection: Axis.horizontal,
            //       itemCount: 30,
            //       itemBuilder: (context, ind) {
            //         return Container(
            //           width: 50,
            //           child: Text("Test "),
            //         );
            //       }),
            // ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: myTodo.length,
                itemBuilder: (context, ind) {
                  return ListTile(
                    title: Text("${myTodo[ind]["name"]}"),
                    subtitle: Text("${myTodo[ind]["time"]}"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () {
                            setState(() {
                              myTodo.removeAt(ind);
                            });
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            setState(() {});
                          },
                        ),
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
