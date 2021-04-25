import 'package:ex_randomic_number/views/number.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Número Randômico',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Número Randómico'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


    var _randomicNumber;
    var _randomicNumber2;
    var _randomicNumber3;
    var _randomicNumber4;
    var _randomicNumber5;
    var _randomicNumber6;


    void _generateNumber() {
      setState(() {
        _randomicNumber = Number.generateRandomicNumber();
        _randomicNumber2 = Number.generateRandomicNumber();
        _randomicNumber3 = Number.generateRandomicNumber();
        _randomicNumber4 = Number.generateRandomicNumber();
        _randomicNumber5 = Number.generateRandomicNumber();
        _randomicNumber6 = Number.generateRandomicNumber();

      });
    }




  @override
  void initState() {
    super.initState();
    _generateNumber();
  }

  @override
  Widget build(BuildContext context) {


  return Scaffold(
    appBar: AppBar(title: Text('Número randômico',),),
      body:  Column(
        children: [
          Text('Número da loteria', textAlign: TextAlign.center,style: TextStyle(fontSize: 40.0,),),
          Text('$_randomicNumber',   style: TextStyle(fontSize: 40.0, backgroundColor: Colors.blue, color: Colors.white),),
          Text('$_randomicNumber2',   style: TextStyle(fontSize: 40.0, backgroundColor: Colors.blue, color: Colors.white),),
          Text('$_randomicNumber3',   style: TextStyle(fontSize: 40.0, backgroundColor: Colors.blue, color: Colors.white),),
          Text('$_randomicNumber4',   style: TextStyle(fontSize: 40.0, backgroundColor: Colors.blue, color: Colors.white),),
          Text('$_randomicNumber5',   style: TextStyle(fontSize: 40.0, backgroundColor: Colors.blue, color: Colors.white),),
          Text('$_randomicNumber6',   style: TextStyle(fontSize: 40.0, backgroundColor: Colors.blue, color: Colors.white),),
        ],
    ),
    floatingActionButton: FloatingActionButton(
        onPressed: () => _generateNumber(),
        tooltip: 'Randomic Number',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
