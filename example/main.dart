import 'package:date_formatter/date_formatter.dart';

void main() {
  String formattedDate = DateFormatter.formatDateTime(
    dateTime: DateTime.now(),
    outputFormat: 'dd/MM/yyyy',
  );
  print(formattedDate);

  String formattedStringDate = DateFormatter.formatStringDate(
    date: '25-01-2023 12:45:00',
    inputFormat: 'dd-MM-yyyy HH:mm:ss',
    outputFormat: 'dd MMM, yyyy',
  );
  print(formattedStringDate);

  DateTime? dateTime = DateFormatter.toDateTime(
    date: '25-01-2023 12:45:00',
    inputFormat: 'dd-MM-yyyy HH:mm:ss',
  );
  print(dateTime);
}
