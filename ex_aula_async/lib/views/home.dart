
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 

  String _name = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Text('Feito $_name'),
          TextButton(
            onPressed: () async{
              print('clicou');
              setState(() {
              _name = _getName();           
              });

              print(_sayHello());


              print(await _sayHello());
              print("aguardou");
              print(await _sayHi());

              //_waitForMe();
              //await _waitForMe();
              

              _waitForMe().then((_) {
                print('passou no then...Acabou tudo');
              });

              //_waitForMe().then((_) {
              //  print('passou no then...Acabou tudo');
              //}).catchError((error) {
              //   print('passou no catchError...acabou com erro');
              //});
              //print("uolll");

            },
            child: Text('Clique aqui para ver o nome!'),
          )
        ],
      ),
    );
  }

   

  //main thread
  String _getName() {
    return 'Rafael';

}
Future<String> _sayHello() async {
     var name = "Hello";
    return name;
  }

  Future<String> _sayHi() async {
     return "Hi";
  }

  Future _waitForMe() async {
    print('iniciou');

    return Future.delayed(Duration(seconds: 3), () {
    print('finalizou');
    setState(() {
          _name = 'Rafael foi.....';
        });
    });
  }
}