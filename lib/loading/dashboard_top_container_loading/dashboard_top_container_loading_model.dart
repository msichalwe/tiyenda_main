import '/flutter_flow/flutter_flow_util.dart';
import '/loading/dashboard_featured_shimmer/dashboard_featured_shimmer_widget.dart';
import 'dashboard_top_container_loading_widget.dart'
    show DashboardTopContainerLoadingWidget;
import 'package:flutter/material.dart';

class DashboardTopContainerLoadingModel
    extends FlutterFlowModel<DashboardTopContainerLoadingWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for dashboardFeaturedShimmer component.
  late DashboardFeaturedShimmerModel dashboardFeaturedShimmerModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    dashboardFeaturedShimmerModel =
        createModel(context, () => DashboardFeaturedShimmerModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    dashboardFeaturedShimmerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
