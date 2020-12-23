import 'package:clockish/bloc/time_stream.dart';
import 'package:clockish/const/clockish_time.dart';
import 'package:rxdart/rxdart.dart';
import 'package:time/time.dart';
import 'package:characters/characters.dart';

const _minuteToHand = "영일이삼사오";
final _hourToHand =
    ["열두", "한", "두", "세", "네", "다섯", "여섯", "일곱", "여덟", "아홉", "열", "열한"].asMap();

final clockishHandStream = clockishTimeStream.map<String>((now) {
  var clockishHand = "대충";
  clockishHand += _hourToHand[now.hour] + "시";
  if (now.minute >= 10) {
    clockishHand += _minuteToHand[now.minute ~/ 10];
    clockishHand += "십";
  }
  clockishHand += _minuteToHand[now.minute % 10];
  if (now.minute != 0) {
    clockishHand += "분";
  }
  return clockishHand + "쯤";
});
