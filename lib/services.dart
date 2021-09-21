// @dart=2.9
import 'dart:io';
import 'package:re_task1_dart_fundamental/homepage.dart';
import 'users.dart';
import 'payment.dart';

void services() {
  int sum;
  int price;
  String service;
  print("Welcome to Laundry");
  print("1. Laundry");
  print("2. Setrika \n");
  stdout.write("Select Services : ");
  var srvc = stdin.readLineSync();
  switch (int.parse(srvc)) {
    case 1:
      service = "Laundry";
      user.setServices(service);
      print(service);
      stdout.write("Input Height : ");
      var height = int.parse(stdin.readLineSync());
      price = 5000;
      print("Price : $price");
      sum = price * height;
      print("Total : $sum");
      user.setSum(sum);
      stdout.write("Pay Now   ");
      var pay = stdin.readLineSync();
      if (pay == 'Y' || pay == 'y') {
        doPayment(height, sum, price, service);
      } else if (pay == 'N' || pay == 'n') {
        services();
      } else {
        Error();
      }
      stdout.write("Another Transaction?   ");
      var transaction = stdin.readLineSync();
      if (transaction == 'Y' || transaction == 'y') {
        services();
      } else {
        Homepage();
      }
      break;
    case 2:
      service = "Setrika";
      user.setServices(service);
      print(service);
      stdout.write("Input Height : ");
      var height = int.parse(stdin.readLineSync());
      price = 3500;
      print("Price : $price");
      sum = price * height;
      print("Total : $sum");
      user.setSum(sum);
      stdout.write("Pay Now   ");
      var pay = stdin.readLineSync();
      if (pay == 'Y' || pay == 'y') {
        doPayment(height, sum, price, service);
      } else if (pay == 'N' || pay == 'n') {
        services();
      } else {
        Error();
      }
      stdout.write("Another Transaction?   ");
      var transaction = stdin.readLineSync();
      if (transaction == 'Y' || transaction == 'y') {
        services();
      } else {
        Homepage();
      }
      break;
    default:
      services();
  }
}
