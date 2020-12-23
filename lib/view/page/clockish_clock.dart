import 'package:clockish/bloc/hand_stream.dart';
import 'package:clockish/bloc/time_stream.dart';
import 'package:clockish/const/clockish_time.dart';
import 'package:clockish/view/widget/hand_text.dart';
import 'package:flutter/material.dart';

class ClockishClock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
        // stream: clockishHandStream,
        stream: clockishHandStream,
        builder: (context, snapshot) {
          final _clockishHand = snapshot.hasData ? snapshot.data : "";
          return GridView.count(
            crossAxisCount: sClockishTime.length ~/ 3,
            children: sClockishTime.characters
                .map((e) => Center(
                      child: HandText(
                        hand: e,
                        turn: _clockishHand.contains(e),
                      ),
                    ))
                .toList(),
          );
        });
  }
}
