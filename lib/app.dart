import 'package:context_tutorial/examples/context_is_element.dart';
import 'package:context_tutorial/examples/tree_example.dart';
import 'package:flutter/material.dart';

enum TutorialExample {
  contextIsElement,
  treeExample,
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(
        title: 'Flutter Demo Home Page',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final example = TutorialExample.treeExample;
    final Widget body;

    switch (example) {
      case TutorialExample.contextIsElement:
        body = ContextIsElement();
        break;
      case TutorialExample.treeExample:
        body = TreeExample();
        break;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: body,
    );
  }
}
