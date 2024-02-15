import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'search_page_empty_list_model.dart';
export 'search_page_empty_list_model.dart';

class SearchPageEmptyListWidget extends StatefulWidget {
  const SearchPageEmptyListWidget({super.key});

  @override
  State<SearchPageEmptyListWidget> createState() =>
      _SearchPageEmptyListWidgetState();
}

class _SearchPageEmptyListWidgetState extends State<SearchPageEmptyListWidget> {
  late SearchPageEmptyListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchPageEmptyListModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('SEARCH_EMPTY_LIST_searchPageEmptyList_ON');
      logFirebaseEvent('searchPageEmptyList_custom_action');
      await actions.dissmiskeybaord(
        context,
      );
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            'assets/images/Illustration-PNG-Photo.png',
            width: 300.0,
            height: 355.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
