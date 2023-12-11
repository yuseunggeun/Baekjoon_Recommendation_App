import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'bookmark_page_widget.dart' show BookmarkPageWidget;
import 'package:flutter/material.dart';

class BookmarkPageModel extends FlutterFlowModel<BookmarkPageWidget> {
  ///  Local state fields for this page.

  dynamic bookmarkJSON;

  List<dynamic> bookmarkList = [];
  void addToBookmarkList(dynamic item) => bookmarkList.add(item);
  void removeFromBookmarkList(dynamic item) => bookmarkList.remove(item);
  void removeAtIndexFromBookmarkList(int index) => bookmarkList.removeAt(index);
  void insertAtIndexInBookmarkList(int index, dynamic item) =>
      bookmarkList.insert(index, item);
  void updateBookmarkListAtIndex(int index, Function(dynamic) updateFn) =>
      bookmarkList[index] = updateFn(bookmarkList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getBookmark)] action in BookmarkPage widget.
  ApiCallResponse? getBookmarkRes;
  // Stores action output result for [Backend Call - API (deleteBookmark)] action in IconButton widget.
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
