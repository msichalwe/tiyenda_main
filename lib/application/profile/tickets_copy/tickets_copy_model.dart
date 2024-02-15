import '/components/up_coming_event_orders_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tickets_copy_widget.dart' show TicketsCopyWidget;
import 'package:flutter/material.dart';

class TicketsCopyModel extends FlutterFlowModel<TicketsCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for upComingEventOrders component.
  late UpComingEventOrdersModel upComingEventOrdersModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    upComingEventOrdersModel =
        createModel(context, () => UpComingEventOrdersModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    upComingEventOrdersModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
