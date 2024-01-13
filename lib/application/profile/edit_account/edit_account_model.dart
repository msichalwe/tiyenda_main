import '/flutter_flow/flutter_flow_util.dart';
import 'edit_account_widget.dart' show EditAccountWidget;
import 'package:flutter/material.dart';

class EditAccountModel extends FlutterFlowModel<EditAccountWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for displayName widget.
  FocusNode? displayNameFocusNode;
  TextEditingController? displayNameController;
  String? Function(BuildContext, String?)? displayNameControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    displayNameFocusNode?.dispose();
    displayNameController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
