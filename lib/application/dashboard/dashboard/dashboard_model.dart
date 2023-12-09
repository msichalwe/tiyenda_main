import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/request_manager.dart';

import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (createBackendUser)] action in dashboard widget.
  ApiCallResponse? apiResult;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Query cache managers for this widget.

  final _featuredEventsCacheManager = FutureRequestManager<ApiCallResponse>();
  Future<ApiCallResponse> featuredEventsCache({
    String? uniqueQueryKey,
    bool? overrideCache,
    required Future<ApiCallResponse> Function() requestFn,
  }) =>
      _featuredEventsCacheManager.performRequest(
        uniqueQueryKey: uniqueQueryKey,
        overrideCache: overrideCache,
        requestFn: requestFn,
      );
  void clearFeaturedEventsCacheCache() => _featuredEventsCacheManager.clear();
  void clearFeaturedEventsCacheCacheKey(String? uniqueKey) =>
      _featuredEventsCacheManager.clearRequest(uniqueKey);

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    /// Dispose query cache managers for this widget.

    clearFeaturedEventsCacheCache();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
