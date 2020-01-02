import 'package:flutter/material.dart';

class PracticeNotFound extends StatefulWidget {
  PracticeNotFound({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _PracticeNotFoundState();
}

class _PracticeNotFoundState extends State<PracticeNotFound> {

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: <Widget>[
            Text(
            'Hittade ingen övning'
            ),
          ],
        ),
      );
  }
}