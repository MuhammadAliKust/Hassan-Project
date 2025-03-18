import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String name = "";
  String email = "";

  ///Setter
  void setName(String val) {
    name = val;
    notifyListeners();
  }

  void setEmail(String val) {
    email = val;
    notifyListeners();
  }

  ///Getter
  String getName() => name;

  String getEmail() => email;
}
