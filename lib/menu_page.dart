// @dart=2.9
import 'dart:io';

import 'homepage.dart';
import 'services.dart';
import 'balance.dart';
import 'topup.dart';

void menu() {
  var menu = stdin.readLineSync();
  switch (int.parse(menu)) {
    case 1:
      services();
      break;
    case 2:
      doTopUp();
      break;
    case 3:
      checkBalance();
      break;
    case 4:
      exit(1);
      break;
    default:
      Homepage();
      break;
  }
}
