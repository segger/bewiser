import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

enum NavTab { mood, statistics, date, practice, settings }

class BottomNavigation extends StatelessWidget {
  BottomNavigation({this.currentTab, this.onSelectTab});
  final NavTab currentTab;
  final ValueChanged<NavTab> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.blueGrey,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.face),
            title: Text('Humör'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            title: Text('Statistik'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('Dejt'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.class_),
            title: Text('Övning'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Inställningar'),
          ),
      ],
      onTap: (index) => onSelectTab(NavTab.values[index]),
    );
  }

}