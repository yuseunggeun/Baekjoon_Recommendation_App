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
