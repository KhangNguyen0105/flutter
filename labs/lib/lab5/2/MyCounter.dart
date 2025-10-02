import 'package:flutter/material.dart';
import 'package:labs/lab5/2/CounterDisplay.dart';
import 'package:labs/lab5/2/IncrementButton.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<StatefulWidget> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int _counter = 0;
  String _lastUpdated = '';

  void _increment() {
    setState(() {
      _counter++;
      _lastUpdated = DateTime.now().toLocal().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CounterDisplay(count: _counter, lastUpdated: _lastUpdated),
          const SizedBox(height: 20),
          IncrementButton(onPressed: _increment),
        ],
      ),
    );
  }
}
