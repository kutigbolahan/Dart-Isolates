import 'package:flutter/material.dart';
import 'package:isolatesparsingjson/controllers/parse.dart';
import 'package:isolatesparsingjson/views/homepage.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
      
      primarySwatch: Colors.blue,
    ),
    home: HomePage(),
        );
  }
}

