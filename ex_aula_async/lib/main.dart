import 'package:ex_aula_async/views/home1.dart';
import 'package:flutter/material.dart';
import 'views/home.dart';
import 'views/home1.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
 
        primarySwatch: Colors.blue,
      ),
      home: Home1('Flutter future async async*'),
    );
  }
}


 

