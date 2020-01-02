import 'package:bewiser/models/practice.dart';
import 'package:flutter/material.dart';

class Constants extends InheritedWidget {
  static Constants of(BuildContext context) => context.dependOnInheritedWidgetOfExactType();

  const Constants({Key key, Widget child}) : super(key: key, child: child);

  final List<Practice> practices = const [
    Practice(1, "Övning 1"),
    Practice(2, "Övning 2"),
    Practice(3, "Övning 3"),
  ];

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return false;
  }
}