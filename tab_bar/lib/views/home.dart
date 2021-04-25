import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  Widget build(BuildContext context) {
      return DefaultTabController(
        length: 3,
        child: Scaffold(

          appBar: AppBar(
            title: Text('LINGUAGENS DE PROGRAMAÇÃO'),
            bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home),),
              Tab(icon: Icon(Icons.android),),
              Tab(icon: Icon(Icons.wifi),),
              // Text('Guia 1'),
              // Text('Guia 2'),
              ]
            ),
          ),
          body: TabBarView(
            children: [
              Center(child: Column(
                  children: [
                    Expanded(child:
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.00, 20.00, 0.00, 50.00),
                      child: Column(
                        children: [
                          Image.asset('images/linguagem-python-1024x579.jpg'),
                          Text('Python', style: TextStyle(fontSize: 40.0),),
                        ],
                      ),
                     )
                    )
                  ],
                ),),
                Center(child: Column(
                  children: [
                    Expanded(child:
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.00, 20.00, 0.00, 50.00),
                      child: Column(
                        children: [
                          Image.asset('images/download.png',width: 500.0,height: 500.0,),
                          Text('JavaScript', style: TextStyle(fontSize: 40.0),),
                        ],
                      ),
                     )
                    )
                  ],
                ),),
                Center(child: Column(
                  children: [
                    Expanded(child:
                    Padding(
                      padding: EdgeInsets.fromLTRB(0.00, 20.00, 0.00, 50.00),
                      child: Column(
                        children: [
                          Image.asset('images/java-logo.jpg'),
                          Text('Java', style: TextStyle(fontSize: 40.0),),
                        ],
                      ),
                     )
                    )
                  ],
                ),),
            ],
          ),
        ),
      );
  }
}