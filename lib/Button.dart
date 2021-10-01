import 'package:flutter/material.dart';

class PageButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: new Text('Button'),
      ),
      body: new Center(
      child: new Column(
      mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        new RaisedButton(
          onPressed: () {},
          child: Text('Rasied Button'),
          color: Colors.deepPurple,
          textColor: Colors.white,
        ),
        new FlatButton(
          onPressed: () {},
          child: Text('Flat Button'),
          color: Colors.deepPurple,
          textColor: Colors.white,
        ),
        new MaterialButton(
          onPressed: () {},
          child: Text('Material Button'),
          color: Colors.deepPurple,
          textColor: Colors.white,
        )
      ]),
    )
    );
  }
}