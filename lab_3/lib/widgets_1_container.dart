import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: const Text("Container Demo"))),
        body: Center(
          child: Container(
            // Sizing: xác định kích thước h: 200px, w: 150px
            height: 200,
            width: 150,

            // có height, không width: container chiếm hết chiều dài màn hình - magin 2 đầu
            // có width, không height:tương tự

            // Painting: màu nền, viền, bo góc, đổ bóng.
            decoration: BoxDecoration(
              color: Colors.blue[100],
              border: Border.all(color: Colors.blue, width: 3),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  offset: const Offset(4, 6),
                  blurRadius: 8,
                ),
              ],
            ),

            // Layout: padding & margin
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),

            // Positioning: đặt Text ở góc phải dưới
            alignment: Alignment.bottomRight,

            child: const Text(
              'Hello World!',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
