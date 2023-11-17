import '/components/single_events_shimmer_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'single_events_component_model.dart';
export 'single_events_component_model.dart';

class SingleEventsComponentWidget extends StatefulWidget {
  const SingleEventsComponentWidget({super.key});

  @override
  _SingleEventsComponentWidgetState createState() =>
      _SingleEventsComponentWidgetState();
}

class _SingleEventsComponentWidgetState
    extends State<SingleEventsComponentWidget> {
  late SingleEventsComponentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SingleEventsComponentModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'singleEventsComponent'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return Title(
        title: 'singleEventsComponent',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            body: wrapWithModel(
              model: _model.singleEventsShimmerModel,
              updateCallback: () => setState(() {}),
              child: const SingleEventsShimmerWidget(),
            ),
          ),
        ));
  }
}
