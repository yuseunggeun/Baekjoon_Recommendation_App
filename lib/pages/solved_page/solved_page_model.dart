import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'solved_page_widget.dart' show SolvedPageWidget;
import 'package:flutter/material.dart';

class SolvedPageModel extends FlutterFlowModel<SolvedPageWidget> {
  ///  Local state fields for this page.

  dynamic solvedJSON;

  List<dynamic> solvedList = [];
  void addToSolvedList(dynamic item) => solvedList.add(item);
  void removeFromSolvedList(dynamic item) => solvedList.remove(item);
  void removeAtIndexFromSolvedList(int index) => solvedList.removeAt(index);
  void insertAtIndexInSolvedList(int index, dynamic item) =>
      solvedList.insert(index, item);
  void updateSolvedListAtIndex(int index, Function(dynamic) updateFn) =>
      solvedList[index] = updateFn(solvedList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getSolves)] action in SolvedPage widget.
  ApiCallResponse? apiResult;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
