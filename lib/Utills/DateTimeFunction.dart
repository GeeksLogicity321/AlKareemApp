import 'package:intl/intl.dart';

bool isDateGreaterThanNow(String dueDate) {
  DateTime compareDate = DateTime.parse(dueDate);
  DateTime now = DateTime.now();
  if (compareDate.year < now.year ||
      (compareDate.year == now.year && compareDate.month <= now.month)) {
    return true;
  } else {
    return false;
  }
}

String convertDateTime(String date) {
  DateTime compareDate = DateTime.parse(date);
  return DateFormat("MMM-yyyy").format(compareDate);
}
