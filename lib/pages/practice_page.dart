import 'package:bewiser/views/practice_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PracticePage extends StatefulWidget {
  PracticePage({Key key}) : super(key: key);

  @override
  _PracticePageState createState() => _PracticePageState();
}

class _PracticePageState extends State<PracticePage> {

  final List<String> _listViewData = [
    "One",
    "Two",
    "Three"
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: _listViewData.map((data) => ListTile(
        title: Text(data),
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PracticeView())),
      )).toList(),
    );
  }
}