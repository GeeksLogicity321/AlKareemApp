import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsScreen extends StatelessWidget {
  static const LatLng alKareemCordinates = LatLng(31, 74);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Map'),
        ),
        body: GoogleMap(
            initialCameraPosition:
                CameraPosition(target: alKareemCordinates, zoom: 1)));
  }
}
