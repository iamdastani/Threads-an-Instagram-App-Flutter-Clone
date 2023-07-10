import 'package:flutter/material.dart';
import 'package:threads/Screens/home.dart';
import 'package:threads/widgets/navigartion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navi(),
    );
  }
}
