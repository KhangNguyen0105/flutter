import 'package:flutter/material.dart';
import 'package:labs/lab5/3/CounterDisplay.dart';
import 'package:labs/lab5/3/CounterProvider.dart';
import 'package:labs/lab5/3/IncrementButton.dart';

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<StatefulWidget> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int _count = 0;
  String? _lastUpdated;

  void _onIncrement() {
    setState(() {
      _count++;
      _lastUpdated = DateTime.now().toLocal().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CounterProvider(
        count: _count,
        lastUpdated: _lastUpdated,
        onIncrement: _onIncrement,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CounterDisplay(),
            const SizedBox(height: 20),
            IncrementButton(),
          ],
        ),
      ),
    );
  }
}
