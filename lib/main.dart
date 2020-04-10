// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
import 'package:flutter/material.dart';
import './textcontrol.dart';
import './phrase.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static const _frases = ['tapette', 'salfiotte'];

  var _index = 0;
  var _contador = 0;

  void _changeIndex() {
    setState(() {
      _contador += 1;
      if(_contador % 2 == 0){
        _index = 0;
      }else{
        _index = 1;
      }
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment 1'),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Phrase(_frases[_index]),
              TextControl(_changeIndex),
            ],
          ),
        ),
      ),
    );
  }
}
