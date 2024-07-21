import 'package:flutter/material.dart';
import 'package:practice_image/views/about_screen.dart';
import 'package:practice_image/views/chat_screen.dart';
import 'package:practice_image/views/custom_screen.dart';
import 'package:practice_image/views/dashboard_screen.dart';
import 'package:practice_image/views/profie_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 2;
  List bottomNavScreens = [
    Column(
      children: [
        Column(
          children: [
            const Text(
              "Home Screen",
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
        // Stack(
        //   clipBehavior: Clip.none,
        //   alignment: Alignment.center,
        //   children: [
        //     Container(
        //       color: const Color.fromRGBO(244, 67, 54, 1),
        //       height: 200,
        //       width: 200,
        //     ),
        //     Container(
        //       color: Colors.yellow,
        //       height: 180,
        //       width: 180,
        //     ),
        //     Container(
        //       color: Colors.green,
        //       height: 150,
        //       width: 150,
        //     ),
        //     Positioned(
        //       right: -20,
        //       top: -20,
        //       child: CircleAvatar(
        //         child: Text("0"),
        //       ),
        //     ),
        //   ],
        // )
      ],
    ),
    AboutScreen(),
    ProfieScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: bottomNavScreens.elementAt(selectedIndex),
        floatingActionButton: Container(
          child: Text("Add"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          selectedFontSize: 50,
          onTap: (value) {
            selectedIndex = value;
            print(selectedIndex);
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.safety_check), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.safety_check), label: "About"),
            BottomNavigationBarItem(
                icon: Icon(Icons.safety_check), label: "Profile")
          ],
        )

        // BottomAppBar(
        //   child: Container(
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //       children: [
        //         IconButton(onPressed: () {}, icon: Icon(Icons.safety_check)),
        //         IconButton(onPressed: () {}, icon: Icon(Icons.safety_check)),
        //         IconButton(onPressed: () {}, icon: Icon(Icons.safety_check)),
        //         IconButton(onPressed: () {}, icon: Icon(Icons.safety_check)),
        //         IconButton(onPressed: () {}, icon: Icon(Icons.safety_check))
        //       ],
        //     ),
        //   ),
        // ),
        );
  }
}
