import '/components/search_page_empty_list_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_widget.dart' show SearchWidget;
import 'package:flutter/material.dart';

class SearchModel extends FlutterFlowModel<SearchWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for eventSearch widget.
  final eventSearchKey = GlobalKey();
  FocusNode? eventSearchFocusNode;
  TextEditingController? eventSearchController;
  String? eventSearchSelectedOption;
  String? Function(BuildContext, String?)? eventSearchControllerValidator;
  // Model for searchPageEmptyList component.
  late SearchPageEmptyListModel searchPageEmptyListModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    searchPageEmptyListModel =
        createModel(context, () => SearchPageEmptyListModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    eventSearchFocusNode?.dispose();

    searchPageEmptyListModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
