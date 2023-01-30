Package for helping to format date from both String and DateTime.

## Format DateTime 
```dart
import package:date_formatter/date_formatter.dart;

String formattedDate = DateFormatter.formatDateTime(
    dateTime: DateTime.now(),
    outputFormat: 'dd/MM/yyyy',
);
```

## Format String Date
```dart
String formattedDate = DateFormatter.formatStringDate(
    date: '25-01-2023 12:45:00',
    inputFormat: 'dd-MM-yyyy HH:mm:ss',
    outputFormat: 'dd MMM, yyyy',
);
```

## Convert String to DateTime
```dart
DateTime? dateTime = DateFormatter.toDateTime(
    date: '25-01-2023 12:45:00',
    inputFormat: 'dd-MM-yyyy HH:mm:ss',
);
```