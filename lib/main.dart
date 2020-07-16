import 'package:flutter/material.dart';
import 'package:ludis/cradle_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ludis',
      home: CradleScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
