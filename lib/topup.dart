// @dart=2.9
import 'dart:io';
import 'users.dart';
import 'homepage.dart';

void doTopUp() {
  var usr = user.getUser();
  var id = user.getID();
  int blnce = user.getBalance();

  print("===============================");
  print("Welcome to Laundry");
  print("===============================\n");
  print("User           : $usr");
  print("User ID        : $id");
  print("Balance        : $blnce");
  stdout.write("Input Nominal  : ");
  var nominal = int.parse(stdin.readLineSync());
  balance(nominal);
  print("TopUp Successfully!!!\n");
  stdout.write("Another Transaction?   ");
  var transaction = stdin.readLineSync();
  if (transaction == 'Y' || transaction == 'y') {
    Homepage();
  } else if (transaction == 'N' || transaction == 'n') {
    exit(1);
  } else {
    Error();
  }
}
