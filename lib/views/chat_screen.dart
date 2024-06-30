import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController taskControl = TextEditingController();
  List myTodo = [
    {"name": "Flutter Class", "time": "12 - 3"},
    {"name": "Flutter Class", "time": "12 - 3"},
    {"name": "Flutter Class", "time": "12 - 3"},
    {"name": "Flutter Class", "time": "12 - 3"},
    {"name": "Flutter Class", "time": "12 - 3"},
    {"name": "Flutter Class", "time": "12 - 3"},
    {"name": "Flutter Class", "time": "12 - 3"},
    {"name": "Flutter Class", "time": "12 - 3"},
    {"name": "Flutter Class", "time": "12 - 3"},
    {"name": "Flutter Class", "time": "12 - 3"},
    {"name": "Flutter Class", "time": "12 - 3"},
    {"name": "Flutter Class", "time": "12 - 3"},
    {"name": "Flutter Class", "time": "12 - 3"},
    {"name": "Flutter Class", "time": "12 - 3"},
    {"name": "Flutter Class", "time": "12 - 3"},
    {"name": "Flutter Class", "time": "12 - 3"},
  ];
  addToTodo() {
    if (taskControl.text != "") {
      setState(() {
        myTodo.add({"name": "${taskControl.text}", "time": "12 - 3"});
        print(myTodo);
        taskControl.clear();
      });
    } else {
      print("your Field is empty");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              minLines: 3,
              controller: taskControl,
            ),
            ElevatedButton(
              onPressed: () {
                addToTodo();
              },
              child: Text("Add"),
            ),
            Container(
              height: 20,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 30,
                  itemBuilder: (context, ind) {
                    return Container(
                      width: 50,
                      child: Text("Test "),
                    );
                  }),
            ),
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
