import 'package:flutter/material.dart';
import 'package:labs/lab5/3/CounterProvider.dart';

class IncrementButton extends StatelessWidget {
  const IncrementButton({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = CounterProvider.of(context);
    return ElevatedButton(
      onPressed: provider.onIncrement,
      child: const Text('Increment', style: TextStyle(fontSize: 24)),
    );
  }
  
}