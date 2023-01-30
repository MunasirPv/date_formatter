library date_formatter;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateFormatter {
  static String formatStringDate({
    required String date,
    required String inputFormat,
    required String outputFormat,
  }) {
    try {
      var inputFormatter = DateFormat(inputFormat);
      var outFormatter = DateFormat(outputFormat);
      DateTime inputDate = inputFormatter.parse(date);
      return outFormatter.format(inputDate);
    } catch (e) {
      debugPrint(e.toString());
      return date;
    }
  }

  static String formatDateTime({
    required DateTime dateTime,
    required String outputFormat,
  }) {
    var outFormatter = DateFormat(outputFormat);
    return outFormatter.format(dateTime);
  }

  static DateTime? toDateTime({
    required String date,
    required String inputFormat,
  }) {
    DateTime? dateTime;
    try {
      dateTime = DateFormat(inputFormat).parse(date);
    } catch (e) {
      dateTime = null;
    }
    return dateTime;
  }
}
