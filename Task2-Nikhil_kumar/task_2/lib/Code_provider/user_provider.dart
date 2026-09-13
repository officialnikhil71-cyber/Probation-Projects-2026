import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  // Abhi ke liye basic dummy state
  String? userName;
  bool isLoggedIn = false;

  void login(String name) {
    userName = name;
    isLoggedIn = true;
    notifyListeners(); // UI ko update karne ke liye
  }

  void logout() {
    userName = null;
    isLoggedIn = false;
    notifyListeners();
  }
}