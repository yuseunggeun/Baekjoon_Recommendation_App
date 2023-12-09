// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TimeDataStruct extends BaseStruct {
  TimeDataStruct({
    int? hour,
    int? minute,
    int? second,
    int? ms,
  })  : _hour = hour,
        _minute = minute,
        _second = second,
        _ms = ms;

  // "hour" field.
  int? _hour;
  int get hour => _hour ?? 0;
  set hour(int? val) => _hour = val;
  void incrementHour(int amount) => _hour = hour + amount;
  bool hasHour() => _hour != null;

  // "minute" field.
  int? _minute;
  int get minute => _minute ?? 0;
  set minute(int? val) => _minute = val;
  void incrementMinute(int amount) => _minute = minute + amount;
  bool hasMinute() => _minute != null;

  // "second" field.
  int? _second;
  int get second => _second ?? 0;
  set second(int? val) => _second = val;
  void incrementSecond(int amount) => _second = second + amount;
  bool hasSecond() => _second != null;

  // "ms" field.
  int? _ms;
  int get ms => _ms ?? 0;
  set ms(int? val) => _ms = val;
  void incrementMs(int amount) => _ms = ms + amount;
  bool hasMs() => _ms != null;

  static TimeDataStruct fromMap(Map<String, dynamic> data) => TimeDataStruct(
        hour: castToType<int>(data['hour']),
        minute: castToType<int>(data['minute']),
        second: castToType<int>(data['second']),
        ms: castToType<int>(data['ms']),
      );

  static TimeDataStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? TimeDataStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'hour': _hour,
        'minute': _minute,
        'second': _second,
        'ms': _ms,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'hour': serializeParam(
          _hour,
          ParamType.int,
        ),
        'minute': serializeParam(
          _minute,
          ParamType.int,
        ),
        'second': serializeParam(
          _second,
          ParamType.int,
        ),
        'ms': serializeParam(
          _ms,
          ParamType.int,
        ),
      }.withoutNulls;

  static TimeDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      TimeDataStruct(
        hour: deserializeParam(
          data['hour'],
          ParamType.int,
          false,
        ),
        minute: deserializeParam(
          data['minute'],
          ParamType.int,
          false,
        ),
        second: deserializeParam(
          data['second'],
          ParamType.int,
          false,
        ),
        ms: deserializeParam(
          data['ms'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'TimeDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TimeDataStruct &&
        hour == other.hour &&
        minute == other.minute &&
        second == other.second &&
        ms == other.ms;
  }

  @override
  int get hashCode => const ListEquality().hash([hour, minute, second, ms]);
}

TimeDataStruct createTimeDataStruct({
  int? hour,
  int? minute,
  int? second,
  int? ms,
}) =>
    TimeDataStruct(
      hour: hour,
      minute: minute,
      second: second,
      ms: ms,
    );
