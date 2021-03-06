import 'package:clockish/bloc/controller/hand_maker.dart';
import 'package:clockish/bloc/stream/hand_stream.dart';
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
          final _clockishHand =
              HandString(snapshot.hasData ? snapshot.data : "");
          print(_clockishHand.value);
          return Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            runAlignment: WrapAlignment.center,
            children: sClockishTime.characters
                .map((e) => SizedBox(
                      width: 50,
                      height: 50,
                      child: HandText(
                        hand: e,
                        turn: shouldTurnOnHand(_clockishHand, e),
                        // turn: _clockishHand.contains(e),
                      ),
                    ))
                .toList(),
          );
        });
  }
}
