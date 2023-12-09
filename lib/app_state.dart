import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_searchCondition')) {
        try {
          final serializedData = prefs.getString('ff_searchCondition') ?? '{}';
          _searchCondition = SeachCondtionStruct.fromSerializableMap(
              jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_solveTimer')) {
        try {
          final serializedData = prefs.getString('ff_solveTimer') ?? '{}';
          _solveTimer =
              SolveTimerStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  SeachCondtionStruct _searchCondition =
      SeachCondtionStruct.fromSerializableMap(jsonDecode(
          '{"minDifficulty":"1","maxDifficulty":"30","minSolveCount":"0","maxSolveCount":"9999999","logical":"or","tags":"[]"}'));
  SeachCondtionStruct get searchCondition => _searchCondition;
  set searchCondition(SeachCondtionStruct value) {
    _searchCondition = value;
    prefs.setString('ff_searchCondition', value.serialize());
  }

  void updateSearchConditionStruct(Function(SeachCondtionStruct) updateFn) {
    updateFn(_searchCondition);
    prefs.setString('ff_searchCondition', _searchCondition.serialize());
  }

  SolveTimerStruct _solveTimer = SolveTimerStruct.fromSerializableMap(jsonDecode(
      '{"solveTime":"{\\"hour\\":\\"1\\",\\"minute\\":\\"0\\",\\"second\\":\\"0\\",\\"ms\\":\\"3600000\\"}","tagTime":"{\\"hour\\":\\"0\\",\\"minute\\":\\"30\\",\\"second\\":\\"0\\",\\"ms\\":\\"1800000\\"}"}'));
  SolveTimerStruct get solveTimer => _solveTimer;
  set solveTimer(SolveTimerStruct value) {
    _solveTimer = value;
    prefs.setString('ff_solveTimer', value.serialize());
  }

  void updateSolveTimerStruct(Function(SolveTimerStruct) updateFn) {
    updateFn(_solveTimer);
    prefs.setString('ff_solveTimer', _solveTimer.serialize());
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
