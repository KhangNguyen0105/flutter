import 'package:flutter/material.dart';

class CounterDisplay extends StatelessWidget {
  final int count;
  final String lastUpdated;

  const CounterDisplay({
    super.key,
    required this.count,
    required this.lastUpdated,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Count: $count', style: const TextStyle(fontSize: 32)),
        Text('Last updated: $lastUpdated', style: const TextStyle(fontSize: 20)),
      ],
    );
  }
}
