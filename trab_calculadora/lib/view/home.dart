import 'package:flutter/material.dart';
import '../model/calculadora.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

  class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  TextEditingController  _number1Controller = new TextEditingController();
  TextEditingController  _number2Controller = new TextEditingController();


  
  

  _rowIcon() {
    return Icon(Icons.people, size: 150,);
  }

  _rowNumber1() {
    return new TextFormField(
      controller: _number1Controller,
      keyboardType: TextInputType.number,
      decoration: new InputDecoration(hintText: 'Digite o seu primeiro numero:'),
      maxLength: 100,
      validator: (value){
        if(value.isEmpty) {
          return 'Digite um número válido!!';
        }
        return null;
      },
    );
  }

   _rowNumber2() {
    return new TextFormField(
      controller: _number2Controller,
      keyboardType: TextInputType.number,
      decoration: new InputDecoration(hintText: 'Digite o seu segundo numero:'),
      maxLength: 100,
      validator: (value){
        if(value.isEmpty) {
          return 'Digite um número válido!!';
        }
        return null;
      },
    );
  }

  _rowButton(BuildContext context) {
    return TextButton.icon(
      onPressed: (){
        _register(context);
        _resetFields();

      }, 
      icon: Icon(Icons.add),
      label: Text('Calcular')
      ); 
  }


  _rowForm(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.always,
      child: _formUI(context),
    );
  }

   _formUI(BuildContext context) {
    return Column(
      children: [
      _rowIcon(),
      _rowNumber1(),
      _rowNumber2(),
      _rowButton(context),
     ],
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
          children: <Widget>[
           _rowForm(context),
           
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        tooltip: 'calculadora',
        child: Icon(Icons.add),
      ), 
    );
  }

  _register(BuildContext context) {

        print('Validou: ${_formKey.currentState.validate()}');
        if(_formKey.currentState.validate()){
        // print('Clicou em calcular');
        // print('Seu primeiro número é ${_number1Controller.text.toString()}');
        // print('Seu segundo número é ${_number2Controller.text.toString()}');

        

        final calculadora = Calculadora(
          double.tryParse(_number1Controller.text),
          double.tryParse(_number2Controller.text)
        );

        print('Resultado:\n ${calculadora.toString()}');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Resultado:\n${calculadora.toString()}'),),
          );

     
           
        } else {
          print('Digite os campos corretamente');
          ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Digite os campos corretamente}',),)
          );
        }
      }

  _resetFields() =>_formKey.currentState.reset();
}