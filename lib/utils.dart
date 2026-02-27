import 'package:intl/intl.dart';

String formatCredits(double value) {
  final formatter = NumberFormat("#,##0.00", "en_US");
  return formatter.format(value).replaceAll(',', ' ');
}

String formatExpiryDate(String isoDate) {
  try {
    DateTime dateTime = DateTime.parse(isoDate);
    return DateFormat('MM/yy').format(dateTime);
  } catch (e) {
    return "00/00";
  }
}
