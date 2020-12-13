import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PersonCard()
  ));
}

class PersonCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("Person ID Card"),
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/cjs.PNG"),
                radius: 60.0,

              ),
            ),
            Divider(
                height: 60.0,
                color: Colors.grey[800],
            ),
            //text widget for label name
            Text(
              "Name:",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16.0,
                letterSpacing: 2.0
              ),
            ),
            //sizedbox for space between lines
            SizedBox(height: 5.0),
            //text widget for name
            Text(
              "Captain Jack Sparrow",
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  fontSize: 20.0,
                  letterSpacing: 2.0,
                  fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            //text widget for label name
            Text(
              "Ships Own:",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                  letterSpacing: 2.0
              ),
            ),
            //sizedbox for space between lines
            SizedBox(height: 5.0),
            //text widget for name
            Text(
              "1",
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontSize: 20.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            //row for contact info
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 5.0),
                Text(
                  "capt.jacksparrow@pirates.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                    letterSpacing: 1.0,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
