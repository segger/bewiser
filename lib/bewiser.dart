import 'package:flutter/material.dart';

import 'package:bewiser/pages/pages.dart';
import 'package:bewiser/navigation/bottom_menu.dart';
import 'package:bewiser/navigation/drawer_menu.dart';

enum NavTab { mood, statistics, date, practice, settings }

class BewiserApp extends StatefulWidget {
  BewiserApp({Key key}) : super(key: key);

  @override
  _BewiserAppState createState() => _BewiserAppState();
}

class _BewiserAppState extends State<BewiserApp> {
  
  NavTab currentTab = NavTab.mood;
  
  _selectTab(NavTab tab) {
    setState(() {
      currentTab = tab;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
      drawer: _drawerNavigation(),
      //bottomNavigationBar: _bottomNavigation(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Text(_appBarTitle()),
      backgroundColor: _appBarColor(),
    );
  }

  String _appBarTitle() {
    switch(currentTab) {
      case NavTab.statistics: return 'Statistik';
      case NavTab.date: return 'Dejt';
      case NavTab.practice: return 'Övning';
      case NavTab.settings: return 'Inställningar';
      case NavTab.mood:
      default:
        return 'Humör';
    }
  }

  Color _appBarColor() {
    switch(currentTab) {
      case NavTab.statistics: return Colors.blueAccent;
      case NavTab.date: return Colors.redAccent;
      case NavTab.practice: return Colors.amber;
      case NavTab.settings: return Colors.teal;
      case NavTab.mood:
      default:
        return Colors.lightGreen;
    }
  }

  DrawerMenu _drawerNavigation() {
    return DrawerMenu(
      onSelectTab: _selectTab,
    );
  }

  BottomMenu _bottomNavigation() {
    return BottomMenu(
      currentTab: currentTab,
      onSelectTab: _selectTab,
    );
  }

  Widget _body() {
    switch(currentTab) {
      case NavTab.statistics: return StatisticsPage();
      case NavTab.date: return DatePage();
      case NavTab.practice: return PracticePage();
      case NavTab.settings: return SettingsPage();
      case NavTab.mood:
      default:
        return MoodPage();
    }
  }

  Widget _materialBody() {
    // stack?
    switch(currentTab) {
      case NavTab.statistics: return MaterialApp(home: StatisticsPage(),);
      case NavTab.date: return MaterialApp(home: DatePage());
      case NavTab.practice: return MaterialApp(home: PracticePage());
      case NavTab.settings: return MaterialApp(home: SettingsPage());
      case NavTab.mood:
      default:
        return MaterialApp(home: MoodPage());
    }
  }
}
