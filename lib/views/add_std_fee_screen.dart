import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddStdFeeScreen extends StatelessWidget {
  AddStdFeeScreen({super.key});

  CollectionReference fees = FirebaseFirestore.instance.collection('fee');

  Future getFeesData() async {
    return fees.get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              fees.add({
                "std_discount": 33,
                "std_fee": 100,
                "std_id": "22",
                "std": "52",
                "std_name": "Owais"
              }).then((ab) {
                print("fees Added $ab");
              }).catchError((cd) => print("this is error $cd"));
            },
            child: Text("Add Student Fee"),
          ),
          Expanded(
            child: FutureBuilder(
                future: getFeesData(),
                builder: (BuildContext build, AsyncSnapshot snapShot) {
                  if (snapShot.hasData) {
                    return ListView.builder(
                      itemCount: snapShot.data.docs.length,
                      itemBuilder: (context, index) {
                        return Text(
                            "data ${snapShot.data!.docs[index]['std_name']}");
                      },
                    );
                  } else {
                    return const CircularProgressIndicator();
                  }
                }),
          )
        ],
      ),
    );
  }
}
