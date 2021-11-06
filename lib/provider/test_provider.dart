import 'package:flutter/material.dart';

class TestProvider extends ChangeNotifier {
  int count = 0;

  increase() {
    count = count + 1;
    notifyListeners();
  }
}
