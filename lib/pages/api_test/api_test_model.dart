import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'api_test_widget.dart' show ApiTestWidget;
import 'package:flutter/material.dart';

class ApiTestModel extends FlutterFlowModel<ApiTestWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for number widget.
  FocusNode? numberFocusNode;
  TextEditingController? numberController;
  String? Function(BuildContext, String?)? numberControllerValidator;
  // Stores action output result for [Backend Call - API (getProblemDetailTest)] action in Button widget.
  ApiCallResponse? detailResponse;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    numberFocusNode?.dispose();
    numberController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
