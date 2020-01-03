import 'package:flutter/material.dart';

class Practice03 extends StatefulWidget {
  Practice03({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Practice03State();
}

class _Practice03State extends State<Practice03> {

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Practice3\nStep1.\n',
            ),
          ],
        ),
      );
  }
}