import 'package:url_launcher/url_launcher.dart';

void callPhoneNumber(String phoneNumber) async {
  Uri url = Uri.parse('tel:$phoneNumber');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}

// Function to open the email app with the provided email address
void sendEmail(String emailAddress) async {
  Uri url = Uri.parse('mailto:$emailAddress');
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
