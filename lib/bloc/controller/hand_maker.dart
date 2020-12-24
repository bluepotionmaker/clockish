const _minuteToHand = "영일이삼사오";
final _hourToHand =
    ["열두", "한", "두", "세", "네", "다섯", "여섯", "일곱", "여덟", "아홉", "열", "열한"].asMap();
String dateTimeToHand(DateTime now) {
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
}

class HandString {
  HandString(this.value);
  String value;
}

bool shouldTurnOnHand(HandString s, String target) {
  if (s.value.isNotEmpty) {
    if (s.value[0] == "영") {
      s.value = s.value.substring(1);
    }
    if (s.value[0] == target) {
      s.value = s.value.substring(1);
      return true;
    }
  }
  return false;
}
