import 'package:flutter/material.dart';

import 'package:bewiser/navigation/navigation.dart';
import 'package:bewiser/pages/pages.dart';

class BewiserApp extends StatefulWidget {
  BewiserApp({Key key}) : super(key: key);

  @override
  _BewiserAppState createState() => _BewiserAppState();
}

class _BewiserAppState extends State<BewiserApp> {
  
  NavTab currentTab = NavTab.mood;
  
  _selectTab(NavTab tab) {
    print(tab);
    setState(() {
      currentTab = tab;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bewiser'),
      ),
      body: _body(),
      bottomNavigationBar: BottomNavigation(
        currentTab: currentTab,
        onSelectTab: _selectTab,
      ),
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
}
