import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'dashboard_featured_shimmer_model.dart';
export 'dashboard_featured_shimmer_model.dart';

class DashboardFeaturedShimmerWidget extends StatefulWidget {
  const DashboardFeaturedShimmerWidget({super.key});

  @override
  _DashboardFeaturedShimmerWidgetState createState() =>
      _DashboardFeaturedShimmerWidgetState();
}

class _DashboardFeaturedShimmerWidgetState
    extends State<DashboardFeaturedShimmerWidget>
    with TickerProviderStateMixin {
  late DashboardFeaturedShimmerModel _model;

  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      loop: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1200.ms,
          begin: const Offset(0.0, 270.0),
          end: const Offset(0.0, -270.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 920.ms,
          begin: 0.69,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardFeaturedShimmerModel());

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

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
          child: Container(
            width: 353.0,
            height: 150.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.00, 0.00),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      logFirebaseEvent(
                          'DASHBOARD_FEATURED_SHIMMER_Container_7pe');
                      logFirebaseEvent('Container_navigate_to');

                      context.pushNamed('eventsingle');
                    },
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        color: const Color(0xFF364672),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      alignment: const AlignmentDirectional(0.00, 0.00),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFF334D86),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ClipRect(
                          child: ImageFiltered(
                            imageFilter: ImageFilter.blur(
                              sigmaX: 6.0,
                              sigmaY: 6.0,
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0.00, 0.00),
                              child: Transform.rotate(
                                angle: 1.9199,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/dark-blue-textile-texture.jpg',
                                    width: 300.0,
                                    height: 200.0,
                                    fit: BoxFit.cover,
                                  ),
                                ).animateOnPageLoad(
                                    animationsMap['imageOnPageLoadAnimation']!),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
