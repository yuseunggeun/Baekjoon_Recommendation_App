import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'update_bookmark_memo_widget.dart' show UpdateBookmarkMemoWidget;
import 'package:flutter/material.dart';

class UpdateBookmarkMemoModel
    extends FlutterFlowModel<UpdateBookmarkMemoWidget> {
  ///  Local state fields for this component.

  int? bookmarkId;

  String memo = 'empty...';

  ///  State fields for stateful widgets in this component.

  // State field(s) for inputMemo widget.
  FocusNode? inputMemoFocusNode;
  TextEditingController? inputMemoController;
  String? Function(BuildContext, String?)? inputMemoControllerValidator;
  // Stores action output result for [Backend Call - API (updateBookmark)] action in Button widget.
  ApiCallResponse? apiResult;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    inputMemoFocusNode?.dispose();
    inputMemoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
