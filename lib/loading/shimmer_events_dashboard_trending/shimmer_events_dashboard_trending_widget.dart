import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'shimmer_events_dashboard_trending_model.dart';
export 'shimmer_events_dashboard_trending_model.dart';

class ShimmerEventsDashboardTrendingWidget extends StatefulWidget {
  const ShimmerEventsDashboardTrendingWidget({super.key});

  @override
  _ShimmerEventsDashboardTrendingWidgetState createState() =>
      _ShimmerEventsDashboardTrendingWidgetState();
}

class _ShimmerEventsDashboardTrendingWidgetState
    extends State<ShimmerEventsDashboardTrendingWidget>
    with TickerProviderStateMixin {
  late ShimmerEventsDashboardTrendingModel _model;

  final animationsMap = {
    'imageOnPageLoadAnimation1': AnimationInfo(
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
    'imageOnPageLoadAnimation2': AnimationInfo(
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
    'imageOnPageLoadAnimation3': AnimationInfo(
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
    'imageOnPageLoadAnimation4': AnimationInfo(
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
    'imageOnPageLoadAnimation5': AnimationInfo(
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
    'imageOnPageLoadAnimation6': AnimationInfo(
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
    'imageOnPageLoadAnimation7': AnimationInfo(
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
    'imageOnPageLoadAnimation8': AnimationInfo(
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
    'imageOnPageLoadAnimation9': AnimationInfo(
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
    'imageOnPageLoadAnimation10': AnimationInfo(
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
    'imageOnPageLoadAnimation11': AnimationInfo(
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
    'imageOnPageLoadAnimation12': AnimationInfo(
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
    _model = createModel(context, () => ShimmerEventsDashboardTrendingModel());

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

    return Container(
      width: MediaQuery.sizeOf(context).width * 1.0,
      decoration: const BoxDecoration(),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 10.0, 10.0),
              child: Container(
                width: 210.0,
                height: 230.0,
                decoration: BoxDecoration(
                  color: const Color(0xFF0D1E39),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 100.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFF334D86),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                      child: ClipRect(
                        child: ImageFiltered(
                          imageFilter: ImageFilter.blur(
                            sigmaX: 6.0,
                            sigmaY: 6.0,
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Transform.rotate(
                              angle: 1.6057,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/dark-blue-textile-texture.jpg',
                                    width: 332.0,
                                    height: 102.0,
                                    fit: BoxFit.cover,
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'imageOnPageLoadAnimation1']!),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 40.0, 5.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 10.0,
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
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Transform.rotate(
                                angle: 1.6057,
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/dark-blue-textile-texture.jpg',
                                      width: 332.0,
                                      height: 102.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'imageOnPageLoadAnimation2']!),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 5.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 10.0,
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
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Transform.rotate(
                                angle: 1.6057,
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/dark-blue-textile-texture.jpg',
                                      width: 332.0,
                                      height: 102.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'imageOnPageLoadAnimation3']!),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 20.0, 5.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 10.0,
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
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Transform.rotate(
                                angle: 1.6057,
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/dark-blue-textile-texture.jpg',
                                      width: 332.0,
                                      height: 400.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'imageOnPageLoadAnimation4']!),
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
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 10.0, 10.0),
              child: Container(
                width: 210.0,
                height: 230.0,
                decoration: BoxDecoration(
                  color: const Color(0xFF0D1E39),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 100.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFF334D86),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                      child: ClipRect(
                        child: ImageFiltered(
                          imageFilter: ImageFilter.blur(
                            sigmaX: 6.0,
                            sigmaY: 6.0,
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Transform.rotate(
                              angle: 1.6057,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/dark-blue-textile-texture.jpg',
                                    width: 332.0,
                                    height: 102.0,
                                    fit: BoxFit.cover,
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'imageOnPageLoadAnimation5']!),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 40.0, 5.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 10.0,
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
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Transform.rotate(
                                angle: 1.6057,
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/dark-blue-textile-texture.jpg',
                                      width: 332.0,
                                      height: 102.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'imageOnPageLoadAnimation6']!),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 5.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 10.0,
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
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Transform.rotate(
                                angle: 1.6057,
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/dark-blue-textile-texture.jpg',
                                      width: 332.0,
                                      height: 102.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'imageOnPageLoadAnimation7']!),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 20.0, 5.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 10.0,
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
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Transform.rotate(
                                angle: 1.6057,
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/dark-blue-textile-texture.jpg',
                                      width: 332.0,
                                      height: 400.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'imageOnPageLoadAnimation8']!),
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
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20.0, 10.0, 10.0, 10.0),
              child: Container(
                width: 210.0,
                height: 230.0,
                decoration: BoxDecoration(
                  color: const Color(0xFF0D1E39),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 100.0,
                      decoration: const BoxDecoration(
                        color: Color(0xFF334D86),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                      ),
                      child: ClipRect(
                        child: ImageFiltered(
                          imageFilter: ImageFilter.blur(
                            sigmaX: 6.0,
                            sigmaY: 6.0,
                          ),
                          child: Align(
                            alignment: const AlignmentDirectional(0.0, 0.0),
                            child: Transform.rotate(
                              angle: 1.6057,
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/dark-blue-textile-texture.jpg',
                                    width: 332.0,
                                    height: 102.0,
                                    fit: BoxFit.cover,
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'imageOnPageLoadAnimation9']!),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 40.0, 5.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 10.0,
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
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Transform.rotate(
                                angle: 1.6057,
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/dark-blue-textile-texture.jpg',
                                      width: 332.0,
                                      height: 102.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'imageOnPageLoadAnimation10']!),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 10.0, 5.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 10.0,
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
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Transform.rotate(
                                angle: 1.6057,
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/dark-blue-textile-texture.jpg',
                                      width: 332.0,
                                      height: 102.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'imageOnPageLoadAnimation11']!),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 20.0, 5.0),
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 10.0,
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
                              alignment: const AlignmentDirectional(0.0, 0.0),
                              child: Transform.rotate(
                                angle: 1.6057,
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/dark-blue-textile-texture.jpg',
                                      width: 332.0,
                                      height: 400.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'imageOnPageLoadAnimation12']!),
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
        ),
      ),
    );
  }
}
