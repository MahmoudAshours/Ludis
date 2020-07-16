import 'package:flutter/material.dart';
import 'package:ludis/Utils/ball.dart';

class CradleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Ball(), Ball(), Ball(), Ball(), Ball()],
        ),
      ),
    );
  }
}
