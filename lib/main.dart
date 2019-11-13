import 'package:flutter/material.dart';

import 'bewiser.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bewiser',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: BewiserApp(),
      debugShowCheckedModeBanner: false,
    );
  }
}