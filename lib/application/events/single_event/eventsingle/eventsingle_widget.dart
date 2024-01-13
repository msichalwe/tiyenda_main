import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/loading/single_events_shimmer/single_events_shimmer_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'eventsingle_model.dart';
export 'eventsingle_model.dart';

class EventsingleWidget extends StatefulWidget {
  const EventsingleWidget({
    super.key,
    required this.eventID,
    String? eventName,
    String? eventDate,
    required this.eventimage,
  })  : eventName = eventName ?? 'null',
        eventDate = eventDate ?? 'null';

  final String? eventID;
  final String eventName;
  final String eventDate;
  final String? eventimage;

  @override
  _EventsingleWidgetState createState() => _EventsingleWidgetState();
}

class _EventsingleWidgetState extends State<EventsingleWidget> {
  late EventsingleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventsingleModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'eventsingle'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('EVENTSINGLE_eventsingle_ON_INIT_STATE');
      logFirebaseEvent('eventsingle_update_app_state');
      setState(() {
        FFAppState().currentEventId = widget.eventID!;
      });
    });

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
        title: 'eventsingle',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            appBar: responsiveVisibility(
              context: context,
              tabletLandscape: false,
              desktop: false,
            )
                ? AppBar(
                    backgroundColor:
                        FlutterFlowTheme.of(context).secondaryBackground,
                    iconTheme: const IconThemeData(color: Colors.white),
                    automaticallyImplyLeading: true,
                    actions: const [],
                    flexibleSpace: FlexibleSpaceBar(
                      background: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 5.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: const AlignmentDirectional(-1.0, 1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 0.0, 8.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'EVENTSINGLE_PAGE_Icon_9jwvzqm3_ON_TAP');
                                          logFirebaseEvent(
                                              'Icon_navigate_back');
                                          context.safePop();
                                        },
                                        child: const Icon(
                                          Icons.arrow_back_rounded,
                                          color: Color(0x00EEECEF),
                                          size: 26.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 10.0, 0.0),
                                    child: ToggleIcon(
                                      onPressed: () async {
                                        setState(
                                          () => FFAppState()
                                                  .likedEvents
                                                  .contains(widget.eventID)
                                              ? FFAppState()
                                                  .removeFromLikedEvents(
                                                      widget.eventID!)
                                              : FFAppState().addToLikedEvents(
                                                  widget.eventID!),
                                        );
                                        logFirebaseEvent(
                                            'EVENTSINGLE_ToggleIcon_8me9kuq3_ON_TOGGL');
                                        if (FFAppState()
                                                .likedEvents
                                                .contains(widget.eventID)
                                            ? true
                                            : false) {
                                          return;
                                        }

                                        logFirebaseEvent(
                                            'ToggleIcon_update_app_state');
                                        setState(() {
                                          FFAppState().addToLikedEvents(
                                              widget.eventID!);
                                        });
                                        return;
                                      },
                                      value: FFAppState()
                                          .likedEvents
                                          .contains(widget.eventID),
                                      onIcon: Icon(
                                        Icons.favorite_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 25.0,
                                      ),
                                      offIcon: Icon(
                                        Icons.favorite_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 25.0,
                                      ),
                                    ),
                                  ),
                                Builder(
                                  builder: (context) => Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 15.0, 8.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        logFirebaseEvent(
                                            'EVENTSINGLE_PAGE_Icon_wiu2n8av_ON_TAP');
                                        logFirebaseEvent('Icon_show_snack_bar');
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              'Event share loading...',
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                const Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                        );
                                        logFirebaseEvent(
                                            'Icon_generate_current_page_link');
                                        _model.currentPageLink =
                                            await generateCurrentPageLink(
                                          context,
                                          title: widget.eventName,
                                          imageUrl: widget.eventimage,
                                          description: 'Tiyenda Events link.',
                                        );

                                        logFirebaseEvent('Icon_share');
                                        await Share.share(
                                          '${_model.currentPageLink}        $currentUserDisplayName shared the ${widget.eventName} event. The event is sceduled for ${dateTimeFormat(
                                            'yMMMd',
                                            functions.convertToDateTime(
                                                widget.eventDate),
                                            locale: FFLocalizations.of(context)
                                                .languageCode,
                                          )}. View it here at : ${_model.currentPageLink}dashboard',
                                          sharePositionOrigin:
                                              getWidgetBoundingBox(context),
                                        );
                                      },
                                      child: FaIcon(
                                        FontAwesomeIcons.share,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    centerTitle: true,
                    elevation: 0.0,
                  )
                : null,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: FutureBuilder<ApiCallResponse>(
                      future: FFAppState()
                          .getSingleEvent(
                        uniqueQueryKey: valueOrDefault<String>(
                          widget.eventID,
                          '1',
                        ),
                        requestFn: () => EventsGroup.getSingleEventsCall.call(
                          eventId: widget.eventID,
                        ),
                      )
                          .then((result) {
                        try {
                          _model.apiRequestCompleted = true;
                          _model.apiRequestLastUniqueKey =
                              valueOrDefault<String>(
                            widget.eventID,
                            '1',
                          );
                        } finally {}
                        return result;
                      }),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return const SingleEventsShimmerWidget();
                        }
                        final scrollingColumnGetSingleEventsResponse =
                            snapshot.data!;
                        return RefreshIndicator(
                          color: FlutterFlowTheme.of(context).primary,
                          onRefresh: () async {
                            logFirebaseEvent(
                                'EVENTSINGLE_scrolling_Column_ON_PULL_TO_');
                            logFirebaseEvent(
                                'scrolling_Column_refresh_database_reques');
                            setState(() {
                              FFAppState().clearGetSingleEventCacheKey(
                                  _model.apiRequestLastUniqueKey);
                              _model.apiRequestCompleted = false;
                            });
                            await _model.waitForApiRequestCompleted();
                          },
                          child: ListView(
                            padding: EdgeInsets.zero,
                            scrollDirection: Axis.vertical,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  constraints: const BoxConstraints(
                                    maxWidth: 570.0,
                                  ),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 16.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: const Color(0xFF2D3A5C),
                                            borderRadius:
                                                BorderRadius.circular(10.0),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'EVENTSINGLE_PAGE_event_main_image_ON_TAP');
                                                logFirebaseEvent(
                                                    'event_main_image_expand_image');
                                                await Navigator.push(
                                                  context,
                                                  PageTransition(
                                                    type:
                                                        PageTransitionType.fade,
                                                    child:
                                                        FlutterFlowExpandedImageView(
                                                      image: Image.network(
                                                        getCORSProxyUrl(
                                                          getJsonField(
                                                            scrollingColumnGetSingleEventsResponse
                                                                .jsonBody,
                                                            r'''$.image''',
                                                          ).toString(),
                                                        ),
                                                        fit: BoxFit.contain,
                                                      ),
                                                      allowRotation: false,
                                                      tag: getJsonField(
                                                        scrollingColumnGetSingleEventsResponse
                                                            .jsonBody,
                                                        r'''$.image''',
                                                      ).toString(),
                                                      useHeroAnimation: true,
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: Hero(
                                                tag: getJsonField(
                                                  scrollingColumnGetSingleEventsResponse
                                                      .jsonBody,
                                                  r'''$.image''',
                                                ).toString(),
                                                transitionOnUserGestures: true,
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  child: Image.network(
                                                    getCORSProxyUrl(
                                                      getJsonField(
                                                        scrollingColumnGetSingleEventsResponse
                                                            .jsonBody,
                                                        r'''$.image''',
                                                      ).toString(),
                                                    ),
                                                    width: double.infinity,
                                                    height: 200.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Text(
                                            getJsonField(
                                              scrollingColumnGetSingleEventsResponse
                                                  .jsonBody,
                                              r'''$.name''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineSmall
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmallFamily,
                                                  fontSize: 22.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(FlutterFlowTheme
                                                              .of(context)
                                                          .headlineSmallFamily),
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
                                                child: Icon(
                                                  Icons.calendar_month_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 20.0,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 0.0),
                                                child: Text(
                                                  '${getJsonField(
                                                    scrollingColumnGetSingleEventsResponse
                                                        .jsonBody,
                                                    r'''$.formattedStartDate''',
                                                  ).toString()} || ${getJsonField(
                                                    scrollingColumnGetSingleEventsResponse
                                                        .jsonBody,
                                                    r'''$.formattedStartTime''',
                                                  ).toString()}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 16.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
                                                child: Icon(
                                                  Icons.location_on_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 20.0,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 0.0),
                                                child: Text(
                                                  'The Arena Lusaka - Along greateast road',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 16.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
                                                child: Icon(
                                                  Icons.attach_money_sharp,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 20.0,
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 0.0),
                                                child: Text(
                                                  'The organizer will review refund requests \non a case-by-case basis',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 16.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 18.0, 0.0, 10.0),
                                          child: FutureBuilder<ApiCallResponse>(
                                            future: EventsGroup
                                                .getOneOrganizerCall
                                                .call(
                                              organizerId: getJsonField(
                                                scrollingColumnGetSingleEventsResponse
                                                    .jsonBody,
                                                r'''$.organizerId''',
                                              ).toString(),
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return const Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child: SpinKitDoubleBounce(
                                                      color: Color(0xFFE14613),
                                                      size: 50.0,
                                                    ),
                                                  ),
                                                );
                                              }
                                              final eventOrginizerGetOneOrganizerResponse =
                                                  snapshot.data!;
                                              return Container(
                                                decoration: BoxDecoration(
                                                  color: const Color(0xFF2D3A5C),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(10.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            10.0),
                                                                child: Text(
                                                                  'Organized By',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily,
                                                                        fontWeight:
                                                                            FontWeight.w800,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                      ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            3.0),
                                                                child: Text(
                                                                  getJsonField(
                                                                    eventOrginizerGetOneOrganizerResponse
                                                                        .jsonBody,
                                                                    r'''$.name''',
                                                                  ).toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  '2.2K Followers',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium,
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
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: Text(
                                            'About event',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMediumFamily,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMediumFamily),
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 20.0),
                                          child: Text(
                                            getJsonField(
                                              scrollingColumnGetSingleEventsResponse
                                                  .jsonBody,
                                              r'''$.description''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .labelMediumFamily,
                                                  fontSize: 15.0,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .labelMediumFamily),
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 12.0),
                                          child: Container(
                                            width: double.infinity,
                                            constraints: const BoxConstraints(
                                              maxWidth: 570.0,
                                            ),
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .alternate,
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(16.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      16.0,
                                                                      15.0),
                                                          child: Text(
                                                            'Ticket  List',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMedium
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMediumFamily,
                                                                  fontSize:
                                                                      20.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .labelMediumFamily),
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  FutureBuilder<
                                                      ApiCallResponse>(
                                                    future: EventsGroup
                                                        .getEventTicketsCall
                                                        .call(
                                                      eventId: widget.eventID,
                                                    ),
                                                    builder:
                                                        (context, snapshot) {
                                                      // Customize what your widget looks like when it's loading.
                                                      if (!snapshot.hasData) {
                                                        return const Center(
                                                          child: SizedBox(
                                                            width: 50.0,
                                                            height: 50.0,
                                                            child:
                                                                SpinKitDoubleBounce(
                                                              color: Color(
                                                                  0xFFE14613),
                                                              size: 50.0,
                                                            ),
                                                          ),
                                                        );
                                                      }
                                                      final columnGetEventTicketsResponse =
                                                          snapshot.data!;
                                                      return Builder(
                                                        builder: (context) {
                                                          final tickets =
                                                              columnGetEventTicketsResponse
                                                                  .jsonBody
                                                                  .toList();
                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: List.generate(
                                                                tickets.length,
                                                                (ticketsIndex) {
                                                              final ticketsItem =
                                                                  tickets[
                                                                      ticketsIndex];
                                                              return Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            5.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            16.0,
                                                                            4.0),
                                                                        child:
                                                                            Text(
                                                                          '${getJsonField(
                                                                            ticketsItem,
                                                                            r'''$.name''',
                                                                          ).toString()} - ',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                                fontSize: 17.0,
                                                                                useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          16.0,
                                                                          4.0),
                                                                      child:
                                                                          Text(
                                                                        'K${getJsonField(
                                                                          ticketsItem,
                                                                          r'''$.price''',
                                                                        ).toString()}',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .labelMedium
                                                                            .override(
                                                                              fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                                                                              fontSize: 17.0,
                                                                              useGoogleFonts: GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).labelMediumFamily),
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              );
                                                            }),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                  if (responsiveVisibility(
                                                    context: context,
                                                    phone: false,
                                                    tablet: false,
                                                    tabletLandscape: false,
                                                    desktop: false,
                                                  ))
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      16.0,
                                                                      0.0),
                                                          child: Container(
                                                            height: 32.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: const Color(
                                                                  0xFF364672),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Text(
                                                                'Sales Ongoing',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodySmallFamily,
                                                                      color: Colors
                                                                          .white,
                                                                      useGoogleFonts: GoogleFonts
                                                                              .asMap()
                                                                          .containsKey(
                                                                              FlutterFlowTheme.of(context).bodySmallFamily),
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Text(
                                                            '2,000 tickets remaining',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelSmall,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        if (functions
                                                .countJsonItems(getJsonField(
                                                  scrollingColumnGetSingleEventsResponse
                                                      .jsonBody,
                                                  r'''$.gallery''',
                                                  true,
                                                ))
                                                .toString() !=
                                            '0')
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 20.0, 0.0, 0.0),
                                            child: Text(
                                              'Events Gallary',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .labelLargeFamily,
                                                        fontSize: 20.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelLargeFamily),
                                                      ),
                                            ),
                                          ),
                                        if (functions
                                                .countJsonItems(getJsonField(
                                                  scrollingColumnGetSingleEventsResponse
                                                      .jsonBody,
                                                  r'''$.gallery''',
                                                  true,
                                                ))
                                                .toString() !=
                                            '0')
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 12.0, 0.0, 50.0),
                                            child: Builder(
                                              builder: (context) {
                                                final gallery = getJsonField(
                                                  scrollingColumnGetSingleEventsResponse
                                                      .jsonBody,
                                                  r'''$.assets''',
                                                ).toList();
                                                return Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: List.generate(
                                                      gallery.length,
                                                      (galleryIndex) {
                                                    final galleryItem =
                                                        gallery[galleryIndex];
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  2.0,
                                                                  2.0,
                                                                  12.0,
                                                                  2.0),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          logFirebaseEvent(
                                                              'EVENTSINGLE_PAGE_Image_tec43xcw_ON_TAP');
                                                          logFirebaseEvent(
                                                              'Image_expand_image');
                                                          await Navigator.push(
                                                            context,
                                                            PageTransition(
                                                              type:
                                                                  PageTransitionType
                                                                      .fade,
                                                              child:
                                                                  FlutterFlowExpandedImageView(
                                                                image: Image
                                                                    .network(
                                                                  getCORSProxyUrl(
                                                                    getJsonField(
                                                                      galleryItem,
                                                                      r'''$.url''',
                                                                    ).toString(),
                                                                  ),
                                                                  fit: BoxFit
                                                                      .contain,
                                                                  errorBuilder: (context,
                                                                          error,
                                                                          stackTrace) =>
                                                                      Image
                                                                          .asset(
                                                                    'assets/images/error_image.png',
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                ),
                                                                allowRotation:
                                                                    false,
                                                                tag:
                                                                    getJsonField(
                                                                  galleryItem,
                                                                  r'''$.url''',
                                                                ).toString(),
                                                                useHeroAnimation:
                                                                    true,
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                        child: Hero(
                                                          tag: getJsonField(
                                                            galleryItem,
                                                            r'''$.url''',
                                                          ).toString(),
                                                          transitionOnUserGestures:
                                                              true,
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                            child:
                                                                Image.network(
                                                              getCORSProxyUrl(
                                                                getJsonField(
                                                                  galleryItem,
                                                                  r'''$.url''',
                                                                ).toString(),
                                                              ),
                                                              width: 80.0,
                                                              height: 80.0,
                                                              fit: BoxFit.cover,
                                                              errorBuilder: (context,
                                                                      error,
                                                                      stackTrace) =>
                                                                  Image.asset(
                                                                'assets/images/error_image.png',
                                                                width: 80.0,
                                                                height: 80.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }),
                                                );
                                              },
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      boxShadow: const [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(0.0, 2.0),
                        )
                      ],
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Order Now',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .bodyMediumFamily,
                                      fontSize: 25.0,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .bodyMediumFamily),
                                    ),
                              ),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'EVENTSINGLE_PAGE_GET_TICKETS_BTN_ON_TAP');
                              logFirebaseEvent('Button_navigate_to');

                              context.pushNamed(
                                'selectTickets',
                                queryParameters: {
                                  'eventId': serializeParam(
                                    widget.eventID,
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            text: 'Get tickets',
                            options: FFButtonOptions(
                              height: 40.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .titleSmallFamily,
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .titleSmallFamily),
                                  ),
                              elevation: 0.0,
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
