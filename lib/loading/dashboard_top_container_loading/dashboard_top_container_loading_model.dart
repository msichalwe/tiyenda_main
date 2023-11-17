import '/flutter_flow/flutter_flow_util.dart';
import '/loading/dashboard_featured_shimmer/dashboard_featured_shimmer_widget.dart';
import '/loading/shimmer_events_dashboard_trending/shimmer_events_dashboard_trending_widget.dart';
import 'dashboard_top_container_loading_widget.dart'
    show DashboardTopContainerLoadingWidget;
import 'package:flutter/material.dart';

class DashboardTopContainerLoadingModel
    extends FlutterFlowModel<DashboardTopContainerLoadingWidget> {
  ///  State fields for stateful widgets in this component.

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
    dashboardFeaturedShimmerModel.dispose();
    shimmerEventsDashboardTrendingModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
