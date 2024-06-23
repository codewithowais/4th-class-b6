import 'package:flutter/material.dart';
import 'package:practice_image/views/about_screen.dart';
import 'package:practice_image/views/chat_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChatScreen(),
    );
  }
}
