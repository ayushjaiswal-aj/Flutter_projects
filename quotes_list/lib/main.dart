import 'package:flutter/material.dart';
import 'quotes.dart';

void main() {
  runApp(MaterialApp(
      home: QuotesList()
  ));
}

class QuotesList extends StatefulWidget {
  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {

  List<String> quotes = [
    "Be yourself, everyone else is taken.",
    "I have nothing to declare except my genius.",
    "The truth is rarely pure and never simple.",
  ];

  List<Quotes> quotesWithAuthors = [
  Quotes(author: "Oscar Wild", quote: "Be yourself, everyone else is taken."),
  Quotes(author: "Oscar Wild", quote: "I have nothing to declare except my genius."),
  Quotes(quote: "The truth is rarely pure and never simple.", author: "Oscar Wild")
  ];

  Widget quoteTemplate(quoteWithAuthor){
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 00.0),
      child: Column(
        children: <Widget>[
          Text(
            quoteWithAuthor.quote,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.blueGrey
            ),
          ),
          SizedBox(height: 10.0 ),
          Text(
            quoteWithAuthor.author,
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54
            ),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          "Awesome Quotes",
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: quotes.map((quote) {
              return Text(
                quote,
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.green,
                    fontWeight: FontWeight.bold
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 30.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: quotesWithAuthors.map((quoteWithAuthor) {
              return Text(
                '${quoteWithAuthor.quote}- ${quoteWithAuthor.author}',
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.bold
                ),
              );
            }).toList(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: quotesWithAuthors.map((quoteWithAuthor) {
              return quoteTemplate(quoteWithAuthor);
            }).toList(),
          ),
        ]
      ),
    );
  }
}
