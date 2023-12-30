import 'package:intl/intl.dart';

bool isDateGreaterThanNow(String dueDate) {
  DateTime compareDate = DateTime.parse(dueDate);
  DateTime now = DateTime.now();
  return compareDate.isBefore(now);
}

String convertDateTime(String date) {
  DateTime compareDate = DateTime.parse(date);
  return DateFormat("dd-MMM-yyyy").format(compareDate);
}
