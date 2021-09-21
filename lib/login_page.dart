// @dart=2.9
import 'dart:io';
import 'homepage.dart';

import 'users.dart';

void login() {
  if (validation()) {
    print("");
    Homepage();
  } else {
    login();
  }
}

bool validation() {
  bool isLogin = false;
  print("Input PIN: ");
  stdout.write("");
  var pin = int.parse(stdin.readLineSync());

  for (Users us in users) {
    if (pin == us.getPIN()) {
      user = us;
      isLogin = true;
    }
  }
  return isLogin;
}
