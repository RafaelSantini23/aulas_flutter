import 'package:flutter/material.dart';

import 'package:exemplo_cep/views/views.dart';




class MyHomePage extends StatefulWidget {

  final String title;

  MyHomePage(this.title);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: CepForm(),
    );
  }
}
