import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Changing App',
      home: ColorChangingPage(),
    );
  }
}

class ColorChangingPage extends StatefulWidget {
  @override
  _ColorChangingPageState createState() => _ColorChangingPageState();
}

class _ColorChangingPageState extends State<ColorChangingPage> {
  Color _backgroundColor = Colors.white;

  void _changeBackgroundColor() {
    setState(() {
      final random = Random();
      _backgroundColor = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: _changeBackgroundColor,
        child: Container(
          color: _backgroundColor,
          child: Center(
            child: Text(
              'Hey there',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
