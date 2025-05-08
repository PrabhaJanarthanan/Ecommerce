import 'package:intl/intl.dart';

class PRFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-yyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'in-INR', symbol: '₹').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    phoneNumber = phoneNumber.replaceAll(RegExp(r'\D'), '');

    if (phoneNumber.length == 10) {
      return '+91 ${phoneNumber.substring(0, 5)} ${phoneNumber.substring(5)}';
    }

    if (phoneNumber.length == 12 && phoneNumber.startsWith('91')) {
      return '+91 ${phoneNumber.substring(2, 7)} ${phoneNumber.substring(7)}';
    }

    return phoneNumber;
  }
}
