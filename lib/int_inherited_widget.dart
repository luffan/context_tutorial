import 'package:flutter/cupertino.dart';

class IntInheritedWidget extends InheritedWidget {
  final int data;

  const IntInheritedWidget({
    super.key,
    required super.child,
    required this.data,
  });

  @override
  bool updateShouldNotify(IntInheritedWidget oldWidget) {
    return data != oldWidget.data;
  }

  static IntInheritedWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<IntInheritedWidget>();
  }
}
