import 'dart:async';
import 'package:time/time.dart';
import 'package:rxdart/rxdart.dart';

final _timeStream =
    Stream.periodic(Duration(milliseconds: 1000), (_) => DateTime.now())
        .startWith(DateTime.now());

const _minuteToHand = "영일이삼사오";
final _hourToHand =
    ["열두", "한", "두", "세", "네", "다섯", "여섯", "일곱", "여덟", "아홉", "열", "열한"].asMap();
// ignore: top_level_function_literal_block
final clockishTimeStream = _timeStream.map<DateTime>((now) {
  // 8 9 0 1 2 => 0, 3 4 5 6 7 => 5
  now += 2.minutes;
  if (now.minute % 10 < 5) {
    now -= (now.minute % 10).minutes;
  } else {
    now -= ((now.minute % 10) - 5).minutes;
  }
  return DateTime(0, 1, 1, now.hour % 12, now.minute);
}).distinct((prev, current) {
  return prev.millisecondsSinceEpoch == current.millisecondsSinceEpoch;
});
