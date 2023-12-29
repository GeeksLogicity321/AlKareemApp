import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:realestate/Utills/GoogleMapFunction.dart';
import 'package:realestate/constants/ApiConstants.dart';
import 'package:sizer/sizer.dart';

class MapsScreen extends StatefulWidget {
  @override
  State<MapsScreen> createState() => _MapsScreenState();
}

class _MapsScreenState extends State<MapsScreen> {
  late GoogleMapController _controller;

  Map<String, Marker> _markers = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Map'),
        ),
        body: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: CameraPosition(
                  target: ApiConstants.alKareemCordinates, zoom: 14.5),
              onMapCreated: (controller) {
                _controller = controller;
                addMarker(
                    'alKareemCordinates', ApiConstants.alKareemCordinates);
              },
              markers: _markers.values.toSet(),
            ),
            Positioned(
              bottom: 4.h,
              left: 32.w,
              child: ElevatedButton(
                  onPressed: () {
                    openGoogleMaps(ApiConstants.alKareemCordinates.latitude,
                        ApiConstants.alKareemCordinates.longitude,context);
                  },
                  child: Text('Get directions')),
            )
          ],
        ));
  }

  addMarker(String id, LatLng location) {
    var marker = Marker(markerId: MarkerId(id), position: location);

    setState(() {
      _markers[id] = marker;
    });
  }
}
