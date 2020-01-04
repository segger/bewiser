import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:bewiser/bewiser.dart';

class BottomMenu extends StatelessWidget {
  BottomMenu({this.currentTab, this.onSelectTab});
  final NavTab currentTab;
  final ValueChanged<NavTab> onSelectTab;

  _mood() {
    return BottomNavigationBarItem(
      icon: Icon(Icons.face),
      title: Text('Humör'),
    );
  }

  _statistics() {
    return BottomNavigationBarItem(
      icon: Icon(Icons.pie_chart),
      title: Text('Statistik'),
    );
  }

  _date() {
    return BottomNavigationBarItem(
      icon: Icon(Icons.people),
      title: Text('Dejt'),
    );
  }

  _practice() {
    return BottomNavigationBarItem(
      icon: Icon(Icons.class_),
      title: Text('Övning'),
    );
  }

  _settings() {
    return BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      title: Text('Inställningar'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.blueGrey,
      items: <BottomNavigationBarItem>[
        _mood(),
        _statistics(),
        _date(),
        _practice(),
        _settings(),
      ],
      onTap: (index) => onSelectTab(NavTab.values[index]),
    );
  }

}