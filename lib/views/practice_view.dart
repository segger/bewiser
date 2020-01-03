
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:bewiser/models/practice.dart';
import 'package:bewiser/widgets/practice/practices.dart';

class PracticeView extends StatefulWidget {
  final Practice practice;
  PracticeView(this.practice, {Key key}) : super(key: key);

  @override
  _PracticeViewState createState() => _PracticeViewState();
}

class _PracticeViewState extends State<PracticeView> {

  Widget _practice(int id) {
    switch(id) {
      case 1:
        return Practice01();
      case 2:
        return Practice02();
      case 3:
        return Practice03();
    }
    return PracticeNotFound();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.practice.title),
      ),
      body: LayoutBuilder(
        builder: (context, constaints) {
          return Container(
            color: Colors.amber,
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constaints.maxHeight),
                child: Container(
                  margin: EdgeInsets.only(left: 15, right: 15, top: 15),
                  //margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)
                    ),
                    //borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  padding: EdgeInsets.all(25),
                  child: _practice(widget.practice.id),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
