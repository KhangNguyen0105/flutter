import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('BorderedImage widget'))),
        body: Center(child: BorderedImage()),
      ),
    );
  }
}

class BorderedImage extends StatelessWidget {
  const BorderedImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      foregroundDecoration: BoxDecoration( // Border nằm trên ảnh
        border: Border.all(color: Colors.purple, width: 4),
        borderRadius: BorderRadius.circular(30),
      ),
      child: ClipRRect( // Bo góc ảnh
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          'assets/images/bird.jpg',
          fit: BoxFit.cover,
          width: 300,
          height: 300,
        ),
      ),
    );
  }
}

