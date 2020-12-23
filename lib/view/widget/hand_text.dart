import 'package:flutter/material.dart';

class HandText extends StatelessWidget {
  HandText({
    @required this.hand,
    this.turn = false,
  });
  final bool turn;
  final String hand;
  @override
  Widget build(BuildContext context) {
    return Text(
      hand,
      style: TextStyle(
        fontFamily: 'Jua',
        color: !turn ? Colors.grey[700] : Colors.white,
        fontSize: 40.0,
      ),
    );
  }
}
