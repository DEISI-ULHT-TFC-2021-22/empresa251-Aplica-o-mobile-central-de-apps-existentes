import 'package:flutter/cupertino.dart';

class Notifier extends ChangeNotifier {
  static String _month = 'Janeiro';
  static String get getMonth => _month;

  set month(String newMonth) {
    _month = newMonth;
    notifyListeners();
  }
}
