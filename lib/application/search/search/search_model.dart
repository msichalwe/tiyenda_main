import '../../../components/map_view_model.dart';
import '/application/search/recent_search_list/recent_search_list_widget.dart';
import '/components/map_view_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_widget.dart' show SearchWidget;
import 'package:flutter/material.dart';

class SearchModel extends FlutterFlowModel<SearchWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for mapView component.
  late MapViewModel mapViewModel;
  // State field(s) for eventSearch widget.
  FocusNode? eventSearchFocusNode;
  TextEditingController? eventSearchController;
  String? Function(BuildContext, String?)? eventSearchControllerValidator;
  // Model for recentSearchList component.
  late RecentSearchListModel recentSearchListModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    mapViewModel = createModel(context, () => MapViewModel());
    recentSearchListModel = createModel(context, () => RecentSearchListModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    mapViewModel.dispose();
    eventSearchFocusNode?.dispose();
    eventSearchController?.dispose();

    recentSearchListModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
