import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Management Demo',
      home: const Scaffold(body: MyCounter()),
    );
  }
}

class MyCounter extends StatefulWidget {
  const MyCounter({super.key});

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int _counter = 0;
  String _lastUpdated = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Count: $_counter', style: TextStyle(fontSize: 32)),
          Text('Last updated: $_lastUpdated', style: TextStyle(fontSize: 20)),
          TextButton(
            onPressed: () {
              setState(() {
                _counter++;
                _lastUpdated = DateTime.now().toLocal().toString();
              });
            },
            child: Text('Increment', style: TextStyle(fontSize: 24)),
          ),
        ],
      ),
    );
  }
}
