import '/flutter_flow/flutter_flow_util.dart';
import 'phone_sign_in_widget.dart' show PhoneSignInWidget;
import 'package:flutter/material.dart';

class PhoneSignInModel extends FlutterFlowModel<PhoneSignInWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    phoneNumberFocusNode?.dispose();
    phoneNumberController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
