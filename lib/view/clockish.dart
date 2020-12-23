import 'package:clockish/view/page/clockish_clock.dart';
import 'package:flutter/material.dart';

class ClockishApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ClockishMain(),
    );
  }
}

class ClockishMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Container(
          width: 400,
          height: 150,
          child: ClockishClock(),
        ),
      ),
    );
  }
}
