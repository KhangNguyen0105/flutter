import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          // child: Image.asset(
          //   'assets/images/flutter_logo.png',
          //   width: 150,
          //   height: 150,
          //   fit: BoxFit.contain,
          // ),
          child: Image.network(
            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            // width: 200,
            // height: 200,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
