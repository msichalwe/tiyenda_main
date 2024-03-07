import 'dart:typed_data';
import 'dart:ui';
import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/file.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:tiyenda/flutter_flow/flutter_flow_util.dart' as ff;
import '../flutter_flow/flutter_flow_theme.dart';
import '/backend/api_requests/api_calls.dart'; // Ensure this path is correct
import 'package:flutter_spinkit/flutter_spinkit.dart';

Future<LatLng> getCurrentUserLocation(
    {required LatLng defaultLocation, bool cached = true}) async {
  Location location = new Location();

  bool _serviceEnabled;
  PermissionStatus _permissionGranted;
  LocationData _locationData;

  _serviceEnabled = await location.serviceEnabled();
  if (!_serviceEnabled) {
    _serviceEnabled = await location.requestService();
    if (!_serviceEnabled) {
      return defaultLocation;
    }
  }

  _permissionGranted = await location.hasPermission();
  if (_permissionGranted == PermissionStatus.denied) {
    _permissionGranted = await location.requestPermission();
    if (_permissionGranted != PermissionStatus.granted) {
      return defaultLocation;
    }
  }

  _locationData = await location.getLocation();
  return LatLng(_locationData.latitude ?? 0.0, _locationData.longitude ?? 0.0);
}

class MapViewWidget extends StatefulWidget {
  const MapViewWidget({Key? key}) : super(key: key);

  @override
  State<MapViewWidget> createState() => _MapViewWidgetState();
}

class _MapViewWidgetState extends State<MapViewWidget> {
  late GoogleMapController mapController;
  Set<Marker> markers = {};
  LatLng? currentUserLocationValue;
  final LatLng _defaultLocation = LatLng(0.0, 0.0);

  @override
  @override
  void initState() {
    super.initState();
    getCurrentUserLocation(defaultLocation: _defaultLocation, cached: true)
        .then((loc) {
      setState(() {
        currentUserLocationValue = loc;
        fetchEvents(); // Moved inside to ensure location is set before fetching events
        // Add a marker for the current location
        markers.add(Marker(
          markerId: MarkerId("current_location"),
          position: currentUserLocationValue!,
          icon:
              BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueOrange),
        ));
        // Also add a circle to represent the 5km radius around the current location
        _circles.add(Circle(
          circleId: CircleId("current_location_radius"),
          center: currentUserLocationValue!,
          radius: 3000, // 5km in meters
          fillColor: Colors.orange.withOpacity(0.5),
          strokeColor: Color(0x7EFF9800),
          strokeWidth: 2,
        ));
      });
    });
  }

// Make sure to declare _circles in your state class
  Set<Circle> _circles = {};

  void _onMapCreated(GoogleMapController controller) {
    const String _darkMapStyle = '''[
  {
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#1d2c4d"
      }
    ]
  },
  {
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#8ec3b9"
      }
    ]
  },
  {
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#1a3646"
      }
    ]
  },
  {
    "featureType": "administrative",
    "elementType": "geometry",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "administrative.country",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#4b6878"
      }
    ]
  },
  {
    "featureType": "administrative.land_parcel",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#64779e"
      }
    ]
  },
  {
    "featureType": "administrative.neighborhood",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "administrative.province",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#4b6878"
      }
    ]
  },
  {
    "featureType": "landscape.man_made",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#334e87"
      }
    ]
  },
  {
    "featureType": "landscape.natural",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#023e58"
      }
    ]
  },
  {
    "featureType": "poi",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#283d6a"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#6f9ba5"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#1d2c4d"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#023e58"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#3C7680"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#304a7d"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "labels.icon",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#98a5be"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#1d2c4d"
      }
    ]
  },
  {
    "featureType": "road.arterial",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#2c6675"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry.stroke",
    "stylers": [
      {
        "color": "#255763"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "labels",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#b0d5ce"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#023e58"
      }
    ]
  },
  {
    "featureType": "road.local",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "transit",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "transit",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#98a5be"
      }
    ]
  },
  {
    "featureType": "transit",
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#1d2c4d"
      }
    ]
  },
  {
    "featureType": "transit.line",
    "elementType": "geometry.fill",
    "stylers": [
      {
        "color": "#283d6a"
      }
    ]
  },
  {
    "featureType": "transit.station",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#3a4762"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#0e1626"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels.text",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#4e6d70"
      }
    ]
  }
]''';

    mapController = controller;
    mapController.setMapStyle(_darkMapStyle);
  }

  Future<void> setCustomMarker(Event event) async {
    final File markerImageFile =
        await DefaultCacheManager().getSingleFile(event.image);
    final Uint8List markerImageBytes = await markerImageFile.readAsBytes();

    // Convert image file to BitmapDescriptor
    final ui.Codec codec =
        await ui.instantiateImageCodec(markerImageBytes, targetWidth: 100);
    final ui.FrameInfo fi = await codec.getNextFrame();
    final ui.Image originalImage = fi.image;

    // Prepare canvas
    final int ringWidth = 5; // Width of the orange ring
    final double imageSize = 100.0 + ringWidth; // Image size
    final double canvasWidth = imageSize; // Canvas width to fit image and ring
    final double canvasHeight =
        imageSize + 30 + 20; // Extra height for text and pin-like element
    final ui.PictureRecorder recorder = ui.PictureRecorder();
    final Canvas canvas = Canvas(recorder);
    final Offset imageCenter = Offset(canvasWidth / 2, imageSize / 2);

    // Draw circular image with orange ring
    final Paint paint = Paint()
      ..color = Colors.orange
      ..style = PaintingStyle.stroke
      ..strokeWidth = ringWidth.toDouble();
    canvas.drawCircle(
        imageCenter, imageSize / 2, paint); // Outer circle for the ring
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(imageCenter, (imageSize - ringWidth) / 2,
        paint); // Inner circle for the image

    // Clip and draw the original image as a circle
    final Path clipPath = Path()
      ..addOval(Rect.fromCircle(
          center: imageCenter, radius: (imageSize - ringWidth) / 2));
    canvas.clipPath(clipPath);
    paintImage(
        canvas: canvas,
        image: originalImage,
        rect: Rect.fromCircle(
            center: imageCenter, radius: (imageSize - ringWidth) / 2),
        fit: BoxFit.cover);

    // Reset clip
    canvas.restore();
    canvas.save();

    // Draw the event title
    final TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: event.name,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(maxWidth: canvasWidth);
    textPainter.paint(
        canvas,
        Offset((canvasWidth - textPainter.width) / 2,
            imageSize + 5)); // Adjust Y position as needed

    // Draw pin-like element (simple triangle for demonstration)
    final Path pinPath = Path();
    pinPath.moveTo(canvasWidth / 2, canvasHeight - 20);
    pinPath.lineTo((canvasWidth / 2) - 10, imageSize + 15);
    pinPath.lineTo((canvasWidth / 2) + 10, imageSize + 15);
    pinPath.close();
    canvas.drawPath(pinPath, paint);

    // Convert canvas to image
    final ui.Image markerImage = await recorder
        .endRecording()
        .toImage(canvasWidth.toInt(), canvasHeight.toInt());
    final ByteData? byteData =
        await markerImage.toByteData(format: ui.ImageByteFormat.png);
    final Uint8List markerImageBytesFinal = byteData!.buffer.asUint8List();

    // Create bitmap descriptor from bytes
    final BitmapDescriptor customIcon =
        BitmapDescriptor.fromBytes(markerImageBytesFinal);

    setState(() {
      markers.add(
        Marker(
          markerId: MarkerId(event.id),
          position: event.location,
          icon: customIcon,
          onTap: () {
            showEventDetails(context, event);
          },
        ),
      );
    });
  }

  void showEventDetails(BuildContext context, Event event) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          padding: EdgeInsets.all(20),
          child: Wrap(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(4), // Padding for the orange ring
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.orange, // Orange ring color
                        width: 3, // Ring width
                      ),
                    ),
                    child: ClipOval(
                      child: Image.network(
                        event.image,
                        height: 100, // Adjust the size as needed
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          event.name,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                            height:
                                5), // Add a bit of space between title and date
                        Text(
                          'Date: ${event.date}', // Assuming you have a date field in your Event class
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[600]),
                        ),
                        SizedBox(height: 10), // Space before description
                        Text(
                          event.description,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 5,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Space before the button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Implement what happens when you press the button
                    // For example, navigate to a detailed event page
                  },
                  child: Text('More Info'),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.orange, // Button color
                    onPrimary: Colors.white, // Text color
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void fetchEvents() async {
    try {
      var response = await EventsGroup.getAllEventsCall.call();
      var eventsResponse = response.jsonBody as List;
      for (var eventJson in eventsResponse) {
        var event = Event.fromJson(eventJson);
        // Directly use setCustomMarker for each event
        // No need to assign its result as it's void
        await setCustomMarker(
            event); // Pass the event object to setCustomMarker
      }
    } catch (e) {
      print("Error fetching events: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: currentUserLocationValue == null
          ? Container(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        child: Center(
          child: SpinKitDoubleBounce(
            color: Color(0xFFE14613),
            size: 50,
          ),
        ),
      )
          : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)), // Set your desired radius here
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)), // Ensure this matches the Container's borderRadius
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: currentUserLocationValue ?? _defaultLocation,
                    zoom: 12.0,
                  ),
                  markers: markers,
                  circles: _circles,
                  mapType: MapType.normal,
                ),
              ),
            )
        ,
          ),
    );
  }
}

class Event {
  final String id;
  final String date;
  final String name;
  final String description;
  final String image;
  final LatLng location;

  Event(this.id, this.date, this.name, this.description, this.image,
      this.location);

  // Add fromJson method
  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      json['id'],
      json['formattedStartDate'],
      json['name'],
      json['description'],
      json['image'],
      LatLng(double.parse(json['location']['lat'].toString()),
          double.parse(json['location']['lng'].toString())),
    );
  }
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
