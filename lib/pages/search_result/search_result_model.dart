import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_result_widget.dart' show SearchResultWidget;
import 'package:flutter/material.dart';

class SearchResultModel extends FlutterFlowModel<SearchResultWidget> {
  ///  Local state fields for this page.

  List<dynamic> resultList = [];
  void addToResultList(dynamic item) => resultList.add(item);
  void removeFromResultList(dynamic item) => resultList.remove(item);
  void removeAtIndexFromResultList(int index) => resultList.removeAt(index);
  void insertAtIndexInResultList(int index, dynamic item) =>
      resultList.insert(index, item);
  void updateResultListAtIndex(int index, Function(dynamic) updateFn) =>
      resultList[index] = updateFn(resultList[index]);

  dynamic resultJSON;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (problemSearch)] action in searchResult widget.
  ApiCallResponse? response;

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
