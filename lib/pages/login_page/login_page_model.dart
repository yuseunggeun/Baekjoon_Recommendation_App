import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  Local state fields for this page.

  bool? create = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for login_id widget.
  FocusNode? loginIdFocusNode;
  TextEditingController? loginIdController;
  String? Function(BuildContext, String?)? loginIdControllerValidator;
  // State field(s) for login_password widget.
  FocusNode? loginPasswordFocusNode;
  TextEditingController? loginPasswordController;
  late bool loginPasswordVisibility;
  String? Function(BuildContext, String?)? loginPasswordControllerValidator;
  // Stores action output result for [Backend Call - API (login)] action in Button widget.
  ApiCallResponse? loginResult;
  // State field(s) for register_name widget.
  FocusNode? registerNameFocusNode;
  TextEditingController? registerNameController;
  String? Function(BuildContext, String?)? registerNameControllerValidator;
  // State field(s) for register_id widget.
  FocusNode? registerIdFocusNode;
  TextEditingController? registerIdController;
  String? Function(BuildContext, String?)? registerIdControllerValidator;
  // State field(s) for register_password widget.
  FocusNode? registerPasswordFocusNode;
  TextEditingController? registerPasswordController;
  late bool registerPasswordVisibility;
  String? Function(BuildContext, String?)? registerPasswordControllerValidator;
  // Stores action output result for [Backend Call - API (signup)] action in Button widget.
  ApiCallResponse? registerResult;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    loginPasswordVisibility = false;
    registerPasswordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    loginIdFocusNode?.dispose();
    loginIdController?.dispose();

    loginPasswordFocusNode?.dispose();
    loginPasswordController?.dispose();

    registerNameFocusNode?.dispose();
    registerNameController?.dispose();

    registerIdFocusNode?.dispose();
    registerIdController?.dispose();

    registerPasswordFocusNode?.dispose();
    registerPasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
