import 'dart:math';

import 'package:flutter/material.dart';

class ContextIsElement extends StatelessWidget {
  const ContextIsElement({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        (context as Element).markNeedsBuild();
      },
      child: Center(
        child: Text('${Random().nextInt(100)}'),
      ),
    );
  }
}
