import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MeaninglessCounter()
  ));
}

class MeaninglessCounter extends StatefulWidget {
  @override
  _MeaninglessCounterState createState() => _MeaninglessCounterState();
}

class _MeaninglessCounterState extends State<MeaninglessCounter> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: Text(
          "Meaningless Counter",
          style: TextStyle(

          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          FlatButton(
            color: Colors.greenAccent,
            onPressed: () {
              setState(() {
                counter += 1;
              });
              },
            child: Icon(
              Icons.add,
              color: Colors.grey[900],
            ),
          ),
          Center(
            child: Text(
              '$counter',
              style: TextStyle(
                fontSize: 60.0,
                color: Colors.amberAccent,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          FlatButton(
            color: Colors.redAccent,
            onPressed: () {
              setState(() {
                counter -= 1;
              });
            },
            child: Icon(
              Icons.remove,
              color: Colors.grey[900],
            ),
          ),
        ],
      ),
    );
  }
}
