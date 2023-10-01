import 'package:earthacke_flutter/screens/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "Earth-Acke",
      theme: ThemeData(
        primaryColor: Colors.white10
      ),
      home: const MyHomePage(),
    );
  }
}


