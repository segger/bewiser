import 'package:flutter/widgets.dart';

class MoodPage extends StatefulWidget {
  MoodPage({Key key}) : super(key: key);

  @override
  _MoodPageState createState() => _MoodPageState();
}

class _MoodPageState extends State<MoodPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('MoodPage'),
    );
  }
}