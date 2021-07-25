import 'package:flutter/material.dart';

import 'HomeScreen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cantikka',
      home: HomeScreen(),
    );
  }
}