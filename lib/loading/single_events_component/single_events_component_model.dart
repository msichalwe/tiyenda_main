import '/flutter_flow/flutter_flow_util.dart';
import '/loading/single_events_shimmer/single_events_shimmer_widget.dart';
import 'single_events_component_widget.dart' show SingleEventsComponentWidget;
import 'package:flutter/material.dart';

class SingleEventsComponentModel
    extends FlutterFlowModel<SingleEventsComponentWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for singleEventsShimmer component.
  late SingleEventsShimmerModel singleEventsShimmerModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    singleEventsShimmerModel =
        createModel(context, () => SingleEventsShimmerModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    singleEventsShimmerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
