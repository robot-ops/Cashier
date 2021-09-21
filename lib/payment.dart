// @dart=2.9
import 'dart:io';
import 'services.dart';
import 'users.dart';
import 'homepage.dart';

void doPayment(int weight, int sum, int price, String service) {
  if (user.getBalance() >= sum) {
    printOut(weight, sum, price, service);
  } else {
    print("Balance Not Enough");
  }
  stdout.write("Another Transaction?   ");
  var transaction = stdin.readLineSync();
  if (transaction == 'Y' || transaction == 'y') {
    services();
  } else {
    Homepage();
  }
}

void printOut(int weight, int sum, int price, String service) {
  print("===============================");
  print("            Bill's             ");
  print("===============================");
  print("User           : " + user.getUser());
  print("User ID        : " + user.getID().toString());
  print("Balance        : " + user.getBalance().toString());
  print("Services       : " + service);
  print("Price /kg      : " + price.toString());
  print("Total Weight   : " + weight.toString());
  print("Total Price    : " + sum.toString());
  balance(-sum);
  print("Return         : " + user.getBalance().toString());
}
