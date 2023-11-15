import '/components/dashboard_featured_shimmer_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/loading/shimmer_events_dashboard_trending/shimmer_events_dashboard_trending_widget.dart';
import 'dashboard_loading_widget.dart' show DashboardLoadingWidget;
import 'package:flutter/material.dart';

class DashboardLoadingModel extends FlutterFlowModel<DashboardLoadingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for dashboardFeaturedShimmer component.
  late DashboardFeaturedShimmerModel dashboardFeaturedShimmerModel;
  // Model for shimmerEventsDashboardTrending component.
  late ShimmerEventsDashboardTrendingModel shimmerEventsDashboardTrendingModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    dashboardFeaturedShimmerModel =
        createModel(context, () => DashboardFeaturedShimmerModel());
    shimmerEventsDashboardTrendingModel =
        createModel(context, () => ShimmerEventsDashboardTrendingModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    dashboardFeaturedShimmerModel.dispose();
    shimmerEventsDashboardTrendingModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
