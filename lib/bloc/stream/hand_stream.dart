import 'package:clockish/bloc/controller/hand_maker.dart';
import 'package:clockish/bloc/stream/time_stream.dart';

final clockishHandStream = clockishTimeStream.map<String>(dateTimeToHand);
