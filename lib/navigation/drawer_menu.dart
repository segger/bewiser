import 'package:flutter/material.dart';

import 'package:bewiser/bewiser.dart';

class DrawerMenu extends StatelessWidget {
  DrawerMenu({this.onSelectTab});
  final ValueChanged<NavTab> onSelectTab;

  _onTap(BuildContext context, NavTab navTab) {
    onSelectTab(navTab);
    Navigator.pop(context);
  }

  _mood(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.face,
        color: Colors.lightGreen,
      ),
      title: Text('Humör'),
      onTap: () {
        _onTap(context, NavTab.mood);
      }
    );
  }

  _statistics(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.pie_chart,
        color: Colors.blueAccent,
      ),
      title: Text('Statistik'),
      onTap: () {
        _onTap(context, NavTab.statistics);
      }
    );
  }

  _date(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.people,
        color: Colors.redAccent,
      ),
      title: Text('Dejt'),
      onTap: () {
        _onTap(context, NavTab.date);
      },
    );
  }

  _practice(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.class_,
        color: Colors.amber,
      ),
      title: Text('Övning'),
      onTap: () {
        _onTap(context, NavTab.practice);
      },
    );
  }

  _settings(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.settings,
        color: Colors.teal,
      ),
      title: Text('Inställningar'),
      onTap: () {
        _onTap(context, NavTab.settings);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Text(''),
          ),
          _mood(context),
          _practice(context),
          _date(context),
          _statistics(context),
          _settings(context),
        ],
      ),
    );
  }
}