import 'package:flutter/material.dart';
import 'package:labs/lab5/3/CounterProvider.dart';

class CounterDisplay extends StatelessWidget {
  const CounterDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = CounterProvider.of(context);
    return Column(
      children: [
        Text('Count: ${provider.count}', style: const TextStyle(fontSize: 32)),
        Text(
          'Last updated: ${provider.lastUpdated ?? "Chưa có"}',
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }
}
