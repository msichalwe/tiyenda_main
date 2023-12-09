import '/flutter_flow/flutter_flow_util.dart';
import 'select_tickets_widget.dart' show SelectTicketsWidget;
import 'package:flutter/material.dart';

class SelectTicketsModel extends FlutterFlowModel<SelectTicketsWidget> {
  ///  Local state fields for this page.

  String? addToCartButtonText = 'Add to cart';

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
