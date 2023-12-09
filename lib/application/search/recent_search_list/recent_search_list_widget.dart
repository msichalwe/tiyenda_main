import '/application/search/search_page_empty_list/search_page_empty_list_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'recent_search_list_model.dart';
export 'recent_search_list_model.dart';

class RecentSearchListWidget extends StatefulWidget {
  const RecentSearchListWidget({super.key});

  @override
  _RecentSearchListWidgetState createState() => _RecentSearchListWidgetState();
}

class _RecentSearchListWidgetState extends State<RecentSearchListWidget> {
  late RecentSearchListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecentSearchListModel());

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

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
      child: Builder(
        builder: (context) {
          final searchhistory = FFAppState()
              .searchHistory
              .map((e) => e)
              .toList()
              .take(10)
              .toList();
          if (searchhistory.isEmpty) {
            return const SearchPageEmptyListWidget();
          }
          return ListView.builder(
            padding: EdgeInsets.zero,
            reverse: true,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: searchhistory.length,
            itemBuilder: (context, searchhistoryIndex) {
              final searchhistoryItem = searchhistory[searchhistoryIndex];
              return Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0x443C4A7F),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(10.0, 8.0, 10.0, 8.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'RECENT_SEARCH_LIST_Column_lst9ai0v_ON_TA');
                              logFirebaseEvent('Column_navigate_to');

                              context.pushNamed(
                                'eventsingle',
                                queryParameters: {
                                  'eventID': serializeParam(
                                    searchhistoryItem.eventId,
                                    ParamType.String,
                                  ),
                                }.withoutNulls,
                              );
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 10.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 1.0,
                                    decoration: const BoxDecoration(),
                                    child: Text(
                                      searchhistoryItem.eventName
                                          .maybeHandleOverflow(
                                        maxChars: 50,
                                        replacement: '…',
                                      ),
                                      textAlign: TextAlign.start,
                                      maxLines: 2,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily:
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily,
                                            fontSize: 16.0,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: Text(
                                        dateTimeFormat(
                                          'relative',
                                          searchhistoryItem.searchDate!,
                                          locale: FFLocalizations.of(context)
                                                  .languageShortCode ??
                                              FFLocalizations.of(context)
                                                  .languageCode,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMediumFamily,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 13.0,
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
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 10.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              logFirebaseEvent(
                                  'RECENT_SEARCH_LIST_Icon_s29e0l17_ON_TAP');
                              logFirebaseEvent('Icon_update_app_state');
                              FFAppState().update(() {
                                FFAppState().removeAtIndexFromSearchHistory(
                                    searchhistoryIndex);
                              });
                            },
                            child: Icon(
                              Icons.delete,
                              color: FlutterFlowTheme.of(context).error,
                              size: 18.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
