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
        appBar: AppBar(title: Center(child: const Text("Icon Demo"))),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(Icons.home, color: Colors.blue, size: 40),
            Icon(
              Icons.favorite,
              color: Colors.red,
              size: 40,
              semanticLabel: "Yêu thích",
            ),
            Icon(Icons.star, color: Colors.green, size: 40),
            Icon(
              Icons.settings,
              color: Colors.purple,
              size: 40,
              shadows: [
                Shadow(
                  color: Colors.black45,
                  blurRadius: 8,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            Icon(Icons.alarm, color: Colors.orange, size: 50),
          ],
        ),
      ),
    );
  }
}
