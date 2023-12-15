import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'set_tag_time_popup_widget.dart' show SetTagTimePopupWidget;
import 'package:flutter/material.dart';

class SetTagTimePopupModel extends FlutterFlowModel<SetTagTimePopupWidget> {
  ///  Local state fields for this component.

  TimeDataStruct? setTime;
  void updateSetTimeStruct(Function(TimeDataStruct) updateFn) =>
      updateFn(setTime ??= TimeDataStruct());

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
