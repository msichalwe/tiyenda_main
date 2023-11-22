import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/loading/dashboard_top_container_loading/dashboard_top_container_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'dashboard_loading_model.dart';
export 'dashboard_loading_model.dart';

class DashboardLoadingWidget extends StatefulWidget {
  const DashboardLoadingWidget({super.key});

  @override
  _DashboardLoadingWidgetState createState() => _DashboardLoadingWidgetState();
}

class _DashboardLoadingWidgetState extends State<DashboardLoadingWidget> {
  late DashboardLoadingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardLoadingModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'dashboard_loading'});
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
        title: 'dashboard_loading',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    wrapWithModel(
                      model: _model.dashboardTopContainerLoadingModel,
                      updateCallback: () => setState(() {}),
                      child: const DashboardTopContainerLoadingWidget(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
