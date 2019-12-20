import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MoodPage extends StatefulWidget {
  MoodPage({Key key}) : super(key: key);

  @override
  _MoodPageState createState() => _MoodPageState();
}

class _MoodPageState extends State<MoodPage> {
  int _mood = 3;
  int _interest = 3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(36.0),
      child: Center(
        child: Column(
          children: <Widget>[
            Slider(
              value: _mood.toDouble(),
              min: 0.0,
              max: 6.0,
              divisions: 6,
              label: 'Humör',
              onChanged: (double newValue) {
                setState(() {
                  _mood = newValue.round();
                });
              },
            ),
            Slider(
              value: _interest.toDouble(),
              min: 0.0,
              max: 6.0,
              divisions: 6,
              label: 'Intresse',
              onChanged: (double newValue) {
                setState(() {
                  _interest = newValue.round();
                });
              },
            )
          ],
        )
      ),
    );
  }
}