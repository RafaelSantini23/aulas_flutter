
import 'package:calculadora_do_amor/model/love_calculator.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

 
  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _name1 = new TextEditingController();
  TextEditingController _name2 = new TextEditingController();



      _rowName() {
      return TextFormField(
        controller: _name1,
        keyboardType: TextInputType.text,
        decoration: new InputDecoration(hintText: "Digite o seu nome:"),
        maxLength: 100,
        validator: (value) {
          if(value.isEmpty) {
            return "Digite um nome";
          }
          return null;
        },
      );
    }
      _rowNameCrush() {
      return TextFormField(
        controller: _name2,
        keyboardType: TextInputType.text,
        decoration: new InputDecoration(hintText: "Digite o nome da crush:"),
        maxLength: 100,
        validator: (value) {
          if(value.isEmpty) {
            return "Digite um nome";
          }
          return null;
        },
      );
    }


  _rowButton(BuildContext context) {
      return TextButton.icon(
        label: Text("Cadastrar"),
        icon: Icon(Icons.add),
        style: TextButton.styleFrom(
          primary: Colors.white,
          backgroundColor: Colors.blue,
          onSurface: Colors.grey,
        ),
        onPressed: (){
          _register(context);
          _resetFields();
        },
      );
    }


  _formUI(BuildContext context) {
     return Column(
       children: [
         _rowName(),
         _rowNameCrush(),
         _rowButton(context),
       ],
     );
    }

     _rowForm(BuildContext context) {
      return Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: _formUI(context),
      );
    }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _rowForm(context),
          ],
        ),
      ),
    );   

}

Future<String>_register(BuildContext context) async {
   print('Validou: ${_formKey.currentState.validate()}');

   if(_formKey.currentState.validate()) {

      final loveCalculator = LoveCalculator(
        _name1.text,
        _name2.text,
      );
      Future.delayed(Duration(seconds: 5), () {
      print('Resultado:\n ${loveCalculator.generateLovePercent()}');
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Resultado:\n ${loveCalculator.generateLovePercent()}'), duration: Duration(seconds: 12),)
      );

    });
      
    } else {
      print('Digite os campos corretamente');
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Digite os campos corretamente', ),)
      );
    }
    }

    
      
  

  _resetFields() => _formKey.currentState.reset();
  
}

