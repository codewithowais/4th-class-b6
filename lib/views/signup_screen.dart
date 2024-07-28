import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  TextEditingController emailControl = TextEditingController();
  TextEditingController passwordControl = TextEditingController();
  @override
  signupFunc1() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailControl.text,
        password: passwordControl.text,
      );
      print(credential.runtimeType);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      } else {
        print(e.code);
      }
    } catch (e) {
      print(e);
    }
    print("Tes");
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.2),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Email"),
                TextField(
                  controller: emailControl,
                ),
                Text("Password"),
                TextField(
                  controller: passwordControl,
                ),
                ElevatedButton(
                    onPressed: () {
                      print("Test signup");
                      signupFunc1();
                    },
                    child: Text("Signup"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
