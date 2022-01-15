import 'package:exploring_valuelistenablebuilder/notifier.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AppValueNotifier appValueNotifier = AppValueNotifier();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: appValueNotifier.valueNotifier,
        builder: (context, value, child) {
          return Text(value.toString());
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          appValueNotifier.incrementNotifier();
        },
      ),
    );
  }
}
