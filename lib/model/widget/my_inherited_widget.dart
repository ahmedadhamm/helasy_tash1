import 'package:flutter/material.dart';

class MyInheritedWidget extends InheritedWidget {
  final String text;
  final String images;

  MyInheritedWidget(this.images, {
    required this.text,
    required Widget child,
  }) : super(child: child);

  static MyInheritedWidget of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>()!;

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) =>
      oldWidget.text != text;
}
