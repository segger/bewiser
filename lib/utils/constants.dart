import 'package:bewiser/models/practice.dart';
import 'package:flutter/material.dart';

class Constants extends InheritedWidget {
  static Constants of(BuildContext context) => context.dependOnInheritedWidgetOfExactType();

  const Constants({Key key, Widget child}) : super(key: key, child: child);

  final List<Practice> practices = const [
    Practice(1, 50, 100, "Hjärta och hjärna"),
    Practice(2, 100, 300, "Mindfulness"),
    Practice(3, 300, 500, "Ute på vägen"),
  ];

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return false;
  }
}