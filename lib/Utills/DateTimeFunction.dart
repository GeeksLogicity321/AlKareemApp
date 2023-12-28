import 'package:intl/intl.dart';

bool isDateGreaterThanNow(String dueDate) {
  DateTime compareDate = DateTime.parse(dueDate);
  DateTime now = DateTime.now();
  return compareDate.isBefore(now);
}

String convertDateTime(String date) {
  return DateFormat("dd-MMM-yyyy").format(DateTime.parse(date));
}
