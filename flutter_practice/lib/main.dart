import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home()
  ));
}


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practice App"),
        centerTitle: true,
        backgroundColor: Colors.red[800],
      ),
      backgroundColor: Colors.pink[100],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // nesting rows in column
        children: <Widget> [
          // start of row 1
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              "Row 1",
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red[800]
              ),
            ),
            FlatButton(
                onPressed: (){},
                color: Colors.cyan,
                child: Text("Flat Button")
            ),
            Container(
              color: Colors.greenAccent,
              padding: EdgeInsets.all(20.0),
              child: Text("Container"),
            )
            ],
          ),
          // end of row 1
          // start of row 2
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  color: Colors.amberAccent,
                  child: Text(
                    "one",
                    style: TextStyle(
                        color: Colors.red[800],
                        fontSize: 20.0
                    ),
                  ),
                ),
              ),
              
              Expanded(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  color: Colors.lightBlueAccent,
                  child: Text(
                    "two",
                    style: TextStyle(
                        color: Colors.red[800],
                        fontSize: 20.0
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.all(10.0),
                  color: Colors.pinkAccent[100],
                  child: Text(
                    "three",
                    style: TextStyle(
                        color: Colors.red[800],
                        fontSize: 20.0
                    ),
                  ),
                ),
              )
            ],
          ),
          // end of row 2
          // start of row 3
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                "Row 3",
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[800]
                ),
              ),
              FlatButton(
                  onPressed: (){},
                  color: Colors.cyan,
                  child: Text("Flat Button")
              ),
              Container(
                color: Colors.greenAccent,
                padding: EdgeInsets.all(20.0),
                child: Text("Container"),
              )
            ],
          ),
          // end of row 3
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red[800],                                                         
        child: Center(
          child: Text(
            "click",
            style: TextStyle(
              fontSize: 20.0
            ),
          ),
        ),
      ),
    );
  }
}
