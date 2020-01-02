import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:bewiser/utils/constants.dart';
import 'package:bewiser/views/practice_view.dart';

class PracticePage extends StatefulWidget {
  PracticePage({Key key}) : super(key: key);

  @override
  _PracticePageState createState() => _PracticePageState();
}

class _PracticePageState extends State<PracticePage> {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: Constants.of(context).practices.map((practice) => ListTile(
        title: Text(practice.title),
        onTap: () => Navigator.push(context, MaterialPageRoute(
          builder: (context) => PracticeView(practice),
        )),
      )).toList(),
    );
  }
}