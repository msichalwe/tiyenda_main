import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'map_view_model.dart';
export 'map_view_model.dart';

class MapViewWidget extends StatefulWidget {
  const MapViewWidget({super.key});

  @override
  State<MapViewWidget> createState() => _MapViewWidgetState();
}

class _MapViewWidgetState extends State<MapViewWidget> {
  late MapViewModel _model;

  LatLng? currentUserLocationValue;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapViewModel());

    getCurrentUserLocation(defaultLocation: const LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
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
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: const Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: SpinKitDoubleBounce(
              color: Color(0xFFE14613),
              size: 50.0,
            ),
          ),
        ),
      );
    }

    return FutureBuilder<ApiCallResponse>(
      future: EventsGroup.getAllEventsCall.call(),
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
        final containerGetAllEventsResponse = snapshot.data!;
        return Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            borderRadius: BorderRadius.circular(4.0),
            shape: BoxShape.rectangle,
          ),
          child: FlutterFlowGoogleMap(
            controller: _model.googleMapsController,
            onCameraIdle: (latLng) => _model.googleMapsCenter = latLng,
            initialLocation: _model.googleMapsCenter ??=
                currentUserLocationValue!,
            markerColor: GoogleMarkerColor.orange,
            mapType: MapType.normal,
            style: GoogleMapStyle.night,
            initialZoom: 14.0,
            allowInteraction: true,
            allowZoom: true,
            showZoomControls: true,
            showLocation: true,
            showCompass: false,
            showMapToolbar: false,
            showTraffic: false,
            centerMapOnMarkerTap: true,
          ),
        );
      },
    );
  }
}
