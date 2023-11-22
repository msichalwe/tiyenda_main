import '/flutter_flow/flutter_flow_util.dart';
import '/loading/dashboard_top_container_loading/dashboard_top_container_loading_widget.dart';
import 'dashboard_loading_widget.dart' show DashboardLoadingWidget;
import 'package:flutter/material.dart';

class DashboardLoadingModel extends FlutterFlowModel<DashboardLoadingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for dashboardTopContainerLoading component.
  late DashboardTopContainerLoadingModel dashboardTopContainerLoadingModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    dashboardTopContainerLoadingModel =
        createModel(context, () => DashboardTopContainerLoadingModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    dashboardTopContainerLoadingModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
