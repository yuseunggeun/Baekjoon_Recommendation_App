// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SolveTimerStruct extends BaseStruct {
  SolveTimerStruct({
    TimeDataStruct? solveTime,
    TimeDataStruct? tagTime,
  })  : _solveTime = solveTime,
        _tagTime = tagTime;

  // "solveTime" field.
  TimeDataStruct? _solveTime;
  TimeDataStruct get solveTime => _solveTime ?? TimeDataStruct();
  set solveTime(TimeDataStruct? val) => _solveTime = val;
  void updateSolveTime(Function(TimeDataStruct) updateFn) =>
      updateFn(_solveTime ??= TimeDataStruct());
  bool hasSolveTime() => _solveTime != null;

  // "tagTime" field.
  TimeDataStruct? _tagTime;
  TimeDataStruct get tagTime => _tagTime ?? TimeDataStruct();
  set tagTime(TimeDataStruct? val) => _tagTime = val;
  void updateTagTime(Function(TimeDataStruct) updateFn) =>
      updateFn(_tagTime ??= TimeDataStruct());
  bool hasTagTime() => _tagTime != null;

  static SolveTimerStruct fromMap(Map<String, dynamic> data) =>
      SolveTimerStruct(
        solveTime: TimeDataStruct.maybeFromMap(data['solveTime']),
        tagTime: TimeDataStruct.maybeFromMap(data['tagTime']),
      );

  static SolveTimerStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? SolveTimerStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'solveTime': _solveTime?.toMap(),
        'tagTime': _tagTime?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'solveTime': serializeParam(
          _solveTime,
          ParamType.DataStruct,
        ),
        'tagTime': serializeParam(
          _tagTime,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static SolveTimerStruct fromSerializableMap(Map<String, dynamic> data) =>
      SolveTimerStruct(
        solveTime: deserializeStructParam(
          data['solveTime'],
          ParamType.DataStruct,
          false,
          structBuilder: TimeDataStruct.fromSerializableMap,
        ),
        tagTime: deserializeStructParam(
          data['tagTime'],
          ParamType.DataStruct,
          false,
          structBuilder: TimeDataStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'SolveTimerStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SolveTimerStruct &&
        solveTime == other.solveTime &&
        tagTime == other.tagTime;
  }

  @override
  int get hashCode => const ListEquality().hash([solveTime, tagTime]);
}

SolveTimerStruct createSolveTimerStruct({
  TimeDataStruct? solveTime,
  TimeDataStruct? tagTime,
}) =>
    SolveTimerStruct(
      solveTime: solveTime ?? TimeDataStruct(),
      tagTime: tagTime ?? TimeDataStruct(),
    );
