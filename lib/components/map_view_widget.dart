import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
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

    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  // In your widget's state
  List<Event> events = []; // Initialize an empty list


  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
          child: SizedBox(
            width: 50,
            height: 50,
            child: SpinKitDoubleBounce(
              color: Color(0xFFE14613),
              size: 50,
            ),
          ),
        ),
      );
    }

    return  FutureBuilder<ApiCallResponse>(
      future: EventsGroup.getAllEventsCall.call(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: SpinKitDoubleBounce(
                color: Color(0xFFE14613),
                size: 50,
              ),
            ),
          );
        } else {
          final eventsResponse = snapshot.data!.jsonBody as List;
          events = eventsResponse.map((e) {
            try {
              return Event(
                e['id'],
                e['name'],
                e['description'],
                e['image'],
                LatLng(
                  double.parse(e['location']['lat'].toString()), // Parse latitude as double
                  double.parse(e['location']['lng'].toString()), // Parse longitude as double
                ),
              );
            } catch (e) {
              print('Error parsing location for event $e: $e');
              return Event(
                "Unknown", // Provide a default ID/name/description/image if parsing fails
                "Unknown",
                "Unknown",
                "Unknown",
                LatLng(0.0, 0.0), // Default location if parsing fails
              );
            }
          }).toList();

          return Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.9,
            child: Stack(
              children: [
                FlutterFlowGoogleMap(
                  controller: _model.googleMapsController,
                  onCameraIdle: (latLng) => _model.googleMapsCenter = latLng,
                  initialLocation: _model.googleMapsCenter ??= currentUserLocationValue!,
                  markerColor: GoogleMarkerColor.orange,
                  markers: events.map((event) => FlutterFlowMarker(
                    event.name,
                    event.location,
                    // onTap: () async => {
                    //   showDialog(
                    //     context: context,
                    //     builder: (_) => AlertDialog(
                    //       title: Text('Event Details'),
                    //       content: EventDetailsWidget(event),
                    //       actions: [
                    //         TextButton(
                    //           onPressed: () => Navigator.pop(context),
                    //           child: Text('Close'),
                    //         ),
                    //       ],
                    //     ),
                    //   );
                    // },
                  )).toList(),
                  mapType: MapType.normal,
                  style: GoogleMapStyle.night,
                  initialZoom: 5,
                  allowInteraction: true,
                  allowZoom: true,
                  showZoomControls: true,
                  showLocation: true,
                  showCompass: false,
                  showMapToolbar: false,
                  showTraffic: false,
                  centerMapOnMarkerTap: true,
                ),
              ],
            ),
          );
        }
      },
    );
  }
}

class Event {
  final String id;
  final String name;
  final String description;
  final String image;
  final LatLng location;
  // Other properties...

  Event(this.id, this.name, this.description, this.image, this.location);
}

class EventDetailsWidget extends StatefulWidget {
  final Event event;

  const EventDetailsWidget(this.event, {super.key});

  @override
  State<EventDetailsWidget> createState() => _EventDetailsWidgetState();
}

class _EventDetailsWidgetState extends State<EventDetailsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network(widget.event.image),
          Text(widget.event.name),
          Text(widget.event.description),
          // ... other details (date/time, location, etc.)
        ],
      ),
    );
  }
}
