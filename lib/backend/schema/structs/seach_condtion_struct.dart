// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SeachCondtionStruct extends BaseStruct {
  SeachCondtionStruct({
    int? minDifficulty,
    int? maxDifficulty,
    int? minSolveCount,
    int? maxSolveCount,
    String? logical,
    List<String>? tags,
  })  : _minDifficulty = minDifficulty,
        _maxDifficulty = maxDifficulty,
        _minSolveCount = minSolveCount,
        _maxSolveCount = maxSolveCount,
        _logical = logical,
        _tags = tags;

  // "minDifficulty" field.
  int? _minDifficulty;
  int get minDifficulty => _minDifficulty ?? 0;
  set minDifficulty(int? val) => _minDifficulty = val;
  void incrementMinDifficulty(int amount) =>
      _minDifficulty = minDifficulty + amount;
  bool hasMinDifficulty() => _minDifficulty != null;

  // "maxDifficulty" field.
  int? _maxDifficulty;
  int get maxDifficulty => _maxDifficulty ?? 0;
  set maxDifficulty(int? val) => _maxDifficulty = val;
  void incrementMaxDifficulty(int amount) =>
      _maxDifficulty = maxDifficulty + amount;
  bool hasMaxDifficulty() => _maxDifficulty != null;

  // "minSolveCount" field.
  int? _minSolveCount;
  int get minSolveCount => _minSolveCount ?? 0;
  set minSolveCount(int? val) => _minSolveCount = val;
  void incrementMinSolveCount(int amount) =>
      _minSolveCount = minSolveCount + amount;
  bool hasMinSolveCount() => _minSolveCount != null;

  // "maxSolveCount" field.
  int? _maxSolveCount;
  int get maxSolveCount => _maxSolveCount ?? 0;
  set maxSolveCount(int? val) => _maxSolveCount = val;
  void incrementMaxSolveCount(int amount) =>
      _maxSolveCount = maxSolveCount + amount;
  bool hasMaxSolveCount() => _maxSolveCount != null;

  // "logical" field.
  String? _logical;
  String get logical => _logical ?? '';
  set logical(String? val) => _logical = val;
  bool hasLogical() => _logical != null;

  // "tags" field.
  List<String>? _tags;
  List<String> get tags => _tags ?? const [];
  set tags(List<String>? val) => _tags = val;
  void updateTags(Function(List<String>) updateFn) => updateFn(_tags ??= []);
  bool hasTags() => _tags != null;

  static SeachCondtionStruct fromMap(Map<String, dynamic> data) =>
      SeachCondtionStruct(
        minDifficulty: castToType<int>(data['minDifficulty']),
        maxDifficulty: castToType<int>(data['maxDifficulty']),
        minSolveCount: castToType<int>(data['minSolveCount']),
        maxSolveCount: castToType<int>(data['maxSolveCount']),
        logical: data['logical'] as String?,
        tags: getDataList(data['tags']),
      );

  static SeachCondtionStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? SeachCondtionStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'minDifficulty': _minDifficulty,
        'maxDifficulty': _maxDifficulty,
        'minSolveCount': _minSolveCount,
        'maxSolveCount': _maxSolveCount,
        'logical': _logical,
        'tags': _tags,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'minDifficulty': serializeParam(
          _minDifficulty,
          ParamType.int,
        ),
        'maxDifficulty': serializeParam(
          _maxDifficulty,
          ParamType.int,
        ),
        'minSolveCount': serializeParam(
          _minSolveCount,
          ParamType.int,
        ),
        'maxSolveCount': serializeParam(
          _maxSolveCount,
          ParamType.int,
        ),
        'logical': serializeParam(
          _logical,
          ParamType.String,
        ),
        'tags': serializeParam(
          _tags,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static SeachCondtionStruct fromSerializableMap(Map<String, dynamic> data) =>
      SeachCondtionStruct(
        minDifficulty: deserializeParam(
          data['minDifficulty'],
          ParamType.int,
          false,
        ),
        maxDifficulty: deserializeParam(
          data['maxDifficulty'],
          ParamType.int,
          false,
        ),
        minSolveCount: deserializeParam(
          data['minSolveCount'],
          ParamType.int,
          false,
        ),
        maxSolveCount: deserializeParam(
          data['maxSolveCount'],
          ParamType.int,
          false,
        ),
        logical: deserializeParam(
          data['logical'],
          ParamType.String,
          false,
        ),
        tags: deserializeParam<String>(
          data['tags'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'SeachCondtionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is SeachCondtionStruct &&
        minDifficulty == other.minDifficulty &&
        maxDifficulty == other.maxDifficulty &&
        minSolveCount == other.minSolveCount &&
        maxSolveCount == other.maxSolveCount &&
        logical == other.logical &&
        listEquality.equals(tags, other.tags);
  }

  @override
  int get hashCode => const ListEquality().hash([
        minDifficulty,
        maxDifficulty,
        minSolveCount,
        maxSolveCount,
        logical,
        tags
      ]);
}

SeachCondtionStruct createSeachCondtionStruct({
  int? minDifficulty,
  int? maxDifficulty,
  int? minSolveCount,
  int? maxSolveCount,
  String? logical,
}) =>
    SeachCondtionStruct(
      minDifficulty: minDifficulty,
      maxDifficulty: maxDifficulty,
      minSolveCount: minSolveCount,
      maxSolveCount: maxSolveCount,
      logical: logical,
    );
