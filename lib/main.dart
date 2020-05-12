import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.pink[100],
          elevation: 0,
        ),
        body: DicePage(),
        backgroundColor: Colors.blue[200],
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  var leftButton=1;
  var rightButton=1;

  void change(){
    setState(() {
      leftButton = Random().nextInt(6)+1;
      rightButton = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$leftButton.png'),
              onPressed: change,
            ),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightButton.png'),
              onPressed: change,
            ),
          )
        ],
      ),
    );
  }
}
