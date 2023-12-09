import '/components/search_page_empty_list_widget.dart';
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
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: searchhistory.length,
            itemBuilder: (context, searchhistoryIndex) {
              final searchhistoryItem = searchhistory[searchhistoryIndex];
              return Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 5.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      searchhistoryItem.eventName.maybeHandleOverflow(
                        maxChars: 30,
                        replacement: '…',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).bodyMediumFamily,
                            fontSize: 16.0,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context).bodyMediumFamily),
                          ),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
