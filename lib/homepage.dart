// @dart=2.9
// ignore_for_file: non_constant_identifier_names

import 'dart:io';
import 'users.dart';
import 'menu_page.dart';

void Homepage() {
  var usr = user.getUser();
  print("===============================");
  print("Welcome $usr");
  print("===============================");
  print("Here's The Option");
  print("1. Services          2. TopUp\n");
  print("3. Balance           4. Exit\n");
  stdout.write("Select Menu : ");
  menu();
}
