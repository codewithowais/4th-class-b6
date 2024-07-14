import 'package:flutter/material.dart';

class ProfieScreen extends StatelessWidget {
  const ProfieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Column(
          children: [
            Container(
              width:
                  // 100,
                  MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.2,
              color: Colors.red,
              child: TabBar(
                tabs: [
                  Tab(
                    text: "Home",
                  ),
                  Tab(
                    text: "Home",
                  ),
                  Tab(
                    text: "Home",
                  ),
                  Tab(
                    text: "Home",
                  )
                ],
              ),
            ),
            Expanded(
              child: TabBarView(children: [
                Container(
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width * .23,
                  height: 39,
                ),
                Container(
                  color: Colors.black,
                  width: MediaQuery.of(context).size.width * .23,
                  height: 39,
                ),
                Container(
                  color: Colors.black,
                  width: MediaQuery.of(context).size.width * .23,
                  height: 39,
                ),
                Container(
                  color: Colors.black,
                  width: MediaQuery.of(context).size.width * .23,
                  height: 39,
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
