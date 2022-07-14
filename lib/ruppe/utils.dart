import 'package:intl/intl.dart';

class Utils {
  static String formatTimeOfDay(int milliSecond) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(milliSecond);
    final dt =
        DateTime(date.year, date.month, date.day, date.hour, date.minute);
    final format = DateFormat.MMMMEEEEd(); //"6:00 AM"
    return format.format(dt);
  }

  static String hourAndMin(int milliSecond) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(milliSecond);
    final dt =
        DateTime(date.year, date.month, date.day, date.hour, date.minute);
    final format = DateFormat.jm(); //"6:00 AM"
    return format.format(dt);
  }
}
