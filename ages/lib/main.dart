import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

import 'model/person.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Ages In Diferent Times'),
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



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          children: [
            Text('Welcome')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
            print('enviou mensagem');
            final person = Person();
            person.name = "Rafael";
            person.lastname = "Santini";
            person.email = "rafaelfarias.santini14@gmail.com";
            person.age = 19;

          _showAlert('${person.toString()}', yesButton: 'Yes Sir/Miss');
        },
        tooltip: 'increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );

  }
  _showAlert(String message, {String title, String yesButton}){
    AlertDialog alert = AlertDialog(
      title: Text (title ?? 'Person'),
      content: Text(message),
      actions: [
        TextButton(onPressed: (){
          print('Clicou no sim');
          Navigator.of(context).pop();
        }, child: Text(yesButton ?? 'Sim')),
        TextButton(onPressed: (){
          print('clicou no não');
          Navigator.of(context).pop();
        }, child: Text('não')),
      ],
    );
    showDialog(context: context, builder: (BuildContext context){
      return alert;
    });
  }

  }

