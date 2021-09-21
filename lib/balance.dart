// @dart=2.9
import 'dart:io';
import 'homepage.dart';
import 'users.dart';

void checkBalance() {
  var usr = user.getUser();
  var id = user.getID();
  int balance = user.getBalance();

  print("===============================");
  print("Welcome to Laundry");
  print("===============================\n");
  print("User         : $usr");
  print("User ID      : $id");
  print("Balance      : $balance");
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
