import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(title: Text("Welcome to Flutter")),
        body: Center(
          child: Container(
            width: 250,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.yellow,
              border: Border.all(color: Colors.red, width: 3),
              // borderRadius: BorderRadius.circular(16),
              shape: BoxShape.circle,
            ),
            alignment: Alignment.center,
            child: const Text(
              "Hello World!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
