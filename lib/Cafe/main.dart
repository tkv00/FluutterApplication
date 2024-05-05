import 'package:flutter/material.dart';
import 'package:recipe_sample/Cafe/screens/home/home_screen.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TwoSome Clone',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
