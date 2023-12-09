import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'problem_detail_widget.dart' show ProblemDetailWidget;
import 'package:flutter/material.dart';

class ProblemDetailModel extends FlutterFlowModel<ProblemDetailWidget> {
  ///  Local state fields for this page.

  dynamic resultJSON;

  dynamic detailJSON;

  List<String> samples = [];
  void addToSamples(String item) => samples.add(item);
  void removeFromSamples(String item) => samples.remove(item);
  void removeAtIndexFromSamples(int index) => samples.removeAt(index);
  void insertAtIndexInSamples(int index, String item) =>
      samples.insert(index, item);
  void updateSamplesAtIndex(int index, Function(String) updateFn) =>
      samples[index] = updateFn(samples[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getProblemDetail)] action in problemDetail widget.
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
