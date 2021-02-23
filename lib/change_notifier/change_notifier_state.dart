import 'package:flutter/cupertino.dart';

class ChangeNotifierState extends ChangeNotifier {
  
  String name = 'Lucas';

  void changeName() {
    name = 'Lucas Bercê de Jesus';
    notifyListeners();
  }

  void resetName() {
    name = 'Lucas';
    notifyListeners();
  }
}