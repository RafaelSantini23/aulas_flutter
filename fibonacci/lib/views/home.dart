import 'package:fibonacci/model/Fibonacci.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _max = new TextEditingController();
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  var fibonacci = Fibonacci();

 
  int _maxStream = 0;
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
            TextFormField(
              controller: _max,
              keyboardType: TextInputType.numberWithOptions(decimal: false),
              decoration: InputDecoration(hintText: 'Max'),
              onFieldSubmitted: (value) async {
                setState(() {
                 _maxStream = int.tryParse(value);
                });
              },
            ),
            TextButton.icon(
              label: Text("Fibonacci"),
              icon: Icon(Icons.add),
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.blue,
                onSurface: Colors.grey,
              ),
              onPressed: () async {
                setState(() {
                  _maxStream = int.tryParse(_max.text);
                });
              }
            ),
            StreamBuilder(
              stream: fibonacci.calculateSingleFibonacci(_maxStream),
              builder: (context, snapshot) {
                if(!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }else if (snapshot.hasError) {
                  return Center(
                    child: Text('Error'),
                  );
                }
                return Text('Fibonacci: ${snapshot.data}');
              },
            ),
          ],
        ),
      ),
    );
  }
}