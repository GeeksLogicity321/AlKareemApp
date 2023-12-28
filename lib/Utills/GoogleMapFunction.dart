import 'package:url_launcher/url_launcher.dart';

void openGoogleMaps(double latitude, double longitude) async {
  final googleMapsUrl = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude');

  if (await canLaunchUrl(googleMapsUrl)) {
    await launchUrl(googleMapsUrl);
  } else {
    print('Could not launch Google Maps');
  }
}
