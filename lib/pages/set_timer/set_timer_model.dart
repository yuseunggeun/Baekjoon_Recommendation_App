import '/flutter_flow/flutter_flow_util.dart';
import 'set_timer_widget.dart' show SetTimerWidget;
import 'package:flutter/material.dart';

class SetTimerModel extends FlutterFlowModel<SetTimerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Switch widget.
  bool? switchValue;

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
