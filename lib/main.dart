import 'package:flutter/material.dart';

void main() => runApp(BewiserApp());

class BewiserApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bewiser',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: BewiserPage(),
    );
  }
}

class BewiserPage extends StatefulWidget {
  BewiserPage({Key key}) : super(key: key);

  @override
  _BewiserPageState createState() => _BewiserPageState();
}

class _BewiserPageState extends State<BewiserPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bewiser'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            title: Text('Humör')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            title: Text('Statistik'),
          ),
          /*
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('Dejt'),
          ),*/
          BottomNavigationBarItem(
            icon: Icon(Icons.class_),
            title: Text('Övning'),
          ),
          /*
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Inställningar'),
          ),*/
        ]),
    );
  }
}
