import 'package:flutter/material.dart';
import 'package:realestate/Utills/SnackBars.dart';
import 'package:url_launcher/url_launcher.dart';

void openGoogleMaps(double latitude, double longitude,BuildContext context) async {
  final googleMapsUrl = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude');

  if (await canLaunchUrl(googleMapsUrl)) {
    await launchUrl(googleMapsUrl);
  } else {
    errorSnackbar(context, "Error: Google Maps not available");
  }
}
