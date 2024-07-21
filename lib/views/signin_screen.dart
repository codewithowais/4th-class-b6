import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});
  TextEditingController emailControl = TextEditingController();
  TextEditingController passwordControl = TextEditingController();
  @override
  signinFunc1() async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailControl.text, password: passwordControl.text);

      print(credential);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
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
                      print("Test signin");
                      signinFunc1();
                    },
                    child: Text("Signin"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
