import 'package:flutter/material.dart';
import 'package:widget_flutter/Button.dart';
import 'package:widget_flutter/Input_Selection.dart';
import 'package:widget_flutter/Slider.dart';
//untuk memanggil file HalamanKetiga.dart pada file lain

void main() {
  runApp(MyApp()); //yang di run pertama class MyApp
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget in Flutter',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.fromLTRB(20, 70, 20, 0),
        child: Column(
          children: <Widget>[
            Text(
              'Nama : Yuskiah Azizah Pangestu',
              textAlign: TextAlign.center,
            ),
            Text(
              'Kelas : XII RPL 6',
            ),
            Text(
              'No Absen : 28',
            ),
            Padding(padding: EdgeInsets.only(bottom: 30)),
            new MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageInputWidget()));
              },
              child: Text('Input and Selection'),
              padding: const EdgeInsets.all(20),
              color: Colors.deepPurple,
              textColor: Colors.white,
            ),
            Padding(padding: EdgeInsets.only(bottom: 3)),
            new MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageButton()));
              },
              child: Text('Button'),
              padding: const EdgeInsets.fromLTRB(29, 20, 29, 20),
              color: Colors.deepPurple,
              textColor: Colors.white,
            ),
            Padding(padding: EdgeInsets.only(bottom: 3)),
            new MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PageSlider()));
              },
              child: Text('Slider'),
              padding: const EdgeInsets.fromLTRB(29, 20, 29, 20),
              color: Colors.deepPurple,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}