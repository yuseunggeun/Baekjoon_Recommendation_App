import '/flutter_flow/flutter_flow_util.dart';
import 'tag_page_widget.dart' show TagPageWidget;
import 'package:flutter/material.dart';

class TagPageModel extends FlutterFlowModel<TagPageWidget> {
  ///  Local state fields for this page.

  List<String> tagList = [];
  void addToTagList(String item) => tagList.add(item);
  void removeFromTagList(String item) => tagList.remove(item);
  void removeAtIndexFromTagList(int index) => tagList.removeAt(index);
  void insertAtIndexInTagList(int index, String item) =>
      tagList.insert(index, item);
  void updateTagListAtIndex(int index, Function(String) updateFn) =>
      tagList[index] = updateFn(tagList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

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
