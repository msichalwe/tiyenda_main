import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'dynamicpage_model.dart';
export 'dynamicpage_model.dart';

class DynamicpageWidget extends StatefulWidget {
  const DynamicpageWidget({
    super.key,
    required this.pageTitle,
    required this.url,
  });

  final String? pageTitle;
  final String? url;

  @override
  State<DynamicpageWidget> createState() => _DynamicpageWidgetState();
}

class _DynamicpageWidgetState extends State<DynamicpageWidget> {
  late DynamicpageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DynamicpageModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'dynamicpage'});
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
        title: 'dynamicpage',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: responsiveVisibility(
              context: context,
              tabletLandscape: false,
              desktop: false,
            )
                ? AppBar(
                    backgroundColor:
                        FlutterFlowTheme.of(context).primaryBackground,
                    iconTheme: IconThemeData(
                        color: FlutterFlowTheme.of(context).primaryText),
                    automaticallyImplyLeading: true,
                    title: Text(
                      valueOrDefault<String>(
                        widget.pageTitle,
                        'Page',
                      ),
                      style: FlutterFlowTheme.of(context).headlineMedium,
                    ),
                    actions: const [],
                    centerTitle: false,
                    elevation: 0.0,
                  )
                : null,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: FlutterFlowWebView(
                      content: widget.url!,
                      bypass: false,
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      verticalScroll: false,
                      horizontalScroll: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
