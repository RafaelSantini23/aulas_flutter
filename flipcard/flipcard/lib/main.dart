import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter - Flipcard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter - Flipcard'),
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

  GlobalKey<FlipCardState> _cardKey = GlobalKey<FlipCardState>();

  _renderBackground() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
      ),
    );
  }

  _frontCard() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Color(0xff3e8e1f),
      ),
      child: Stack(
        children: [
          Expanded(
            child: Padding(
              child:  Image.asset('images/picles.png',),
              padding: EdgeInsets.only(right: 10.0,left: 10.0,top: 10.0,bottom: 10.0),
            ), 
          ),
          Expanded(
            child: Padding(
              child: Image.asset('images/Sem-Título-1.png', width: 80.0,height: 80.0,),
              padding: EdgeInsets.only(right: 250.0,left: 40.0,top: 80.0,bottom: 40.0),
            )
          ),
          Expanded(
            child: Padding(
              child: Text('RAFAEL SANTINI', style: TextStyle(fontSize: 20.0, color: Colors.white),),
              padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 230.0,bottom: 0.0),
            )
          ),
          Expanded(
            child: Padding(
              child: Image.asset('images/logo.png', width: 150,height: 120,),
              padding: EdgeInsets.only(left: 350.0,right: 10.0,top: 3.0,bottom: 80.0),
            )
          )
        ],
      ),
    );
  }

  _backCard() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        color: Color(0xff3e8e1f),
      ),
      child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:40.0),
              child: Container(
                color: Colors.grey[300],
                width: double.infinity,
                height: 50.0,
            )
          ),
          Expanded(
            child:Padding(
            child: Text('7777 7777 7777 7777', style: TextStyle(fontSize: 25.0, color:Colors.white),),
            padding: EdgeInsets.only(left: 20.0,right: 20.0,top: 230.0,bottom: 0.0),
         ),
        ),
        Expanded(
          child: Padding(
          child: Image.asset('images/cirrus.png',),
          padding: EdgeInsets.only(left: 380.0,right: 20.0,top: 220.0,bottom: 0.0),
          )
         )
        ],
      )
    );
 }

  _renderCard(BuildContext context) {
    return Card(
      elevation: 0.0,
      margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 300.0,bottom:300.0),
      color: Colors.white,
      child: FlipCard(
        key: _cardKey,
        flipOnTouch: true,
        direction: FlipDirection.HORIZONTAL,
        speed: 1000,
        onFlipDone: (status){
          print('status $status');
        },
        front: _frontCard(),
        back: _backCard(),
      ),
    );
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          _renderBackground(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(child: _renderCard(context),)
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _cardKey.currentState.toggleCard();
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}
