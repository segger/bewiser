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
    return Container(
      color: Colors.amber[50],
      child: Container(
        margin: EdgeInsets.only(left: 15, right: 15, top: 15),
        color: Colors.amber[500],
        child: ListView(
          children: Constants.of(context).practices.map((practice) =>
          Container(
            color: Colors.amber[practice.gradientColor],
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber[practice.color],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                )
              ),
              child: ListTile(
                title: Text(practice.title),
                onTap: () => Navigator.push(context, MaterialPageRoute(
                  builder: (context) => PracticeView(practice),
                )),
              )
            ),
          )).toList(),
        ),
      ),
    );
  }
}