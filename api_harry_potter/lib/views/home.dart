
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:api_harry_potter/model/sortHat.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
 

  String _name = "";
  String _house = "";
  String _phrase = "";


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        decoration: BoxDecoration(
         image: DecorationImage(
           image: AssetImage('images/fundo.jpg'),
           fit: BoxFit.cover,
         )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Text('Feito $_name',style: TextStyle(color: Colors.white),),
              Text('Casa escolhida para você: $_house ',style: TextStyle(color: Colors.white),),
              Text('Frase da casa: $_phrase ',style: TextStyle(color: Colors.white),),
              TextButton(
             onPressed: () async{
               print('clicou');
               setState(() {
               _name = _getName(); 
               
                         
               });

               final URL = Uri.https('www.potterapi.com','/v1/sortingHat');
               final myFuture = http.get(URL); 
               myFuture.then((response) {
                 if(response.statusCode == 200) {
                   print('tudo ok');

                   var jsonResponse = convert.jsonDecode(response.body);
                   print(jsonResponse);
                   setState(() {
                        _house = jsonResponse; 
                        _phrase = SortHat.generatePhrases(_house);
                   });
                 } else {
                   print('deu ruim');
                 }
               });

             },
                child: Text('Clique aqui para ver a casa e a frase!'),
              ),
            ],
          ),
        ),
      ),
    );
  }

   

  //main thread
 String _getName() {
   return 'Rafael';

}
 
}