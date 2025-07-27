import 'package:intl/intl.dart';

class DateFormatter {
  static final DateFormat _dateFormat = DateFormat('yyyy-MM-dd');
  static final DateFormat _timeFormat = DateFormat('HH:mm');
  static final DateFormat _dateTimeFormat = DateFormat('yyyy-MM-dd HH:mm');
  static final DateFormat _monthFormat = DateFormat('yyyy年MM月');
  static final DateFormat _dayFormat = DateFormat('MM月dd日');
  static final DateFormat _weekdayFormat = DateFormat('E', 'ja');
  
  static String formatDate(DateTime date) {
    return _dateFormat.format(date);
  }
  
  static String formatTime(DateTime date) {
    return _timeFormat.format(date);
  }
  
  static String formatDateTime(DateTime date) {
    return _dateTimeFormat.format(date);
  }
  
  static String formatMonth(DateTime date) {
    return _monthFormat.format(date);
  }
  
  static String formatDay(DateTime date) {
    return _dayFormat.format(date);
  }
  
  static String formatWeekday(DateTime date) {
    return _weekdayFormat.format(date);
  }
  
  static String formatRelative(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);
    
    if (difference.inDays == 0) {
      return '今日';
    } else if (difference.inDays == 1) {
      return '昨日';
    } else if (difference.inDays < 7) {
      return '${difference.inDays}日前';
    } else {
      return formatDay(date);
    }
  }
}