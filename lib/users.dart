// @dart=2.9
class Users {
  String users;
  int pin;
  int balance;
  int id;
  String services;
  int sum;

  Users(this.users, this.pin, this.balance, this.id);

  String getUser() {
    return users;
  }

  int getPIN() {
    return pin;
  }

  int getBalance() {
    return balance;
  }

  int getID() {
    return id;
  }

  setServices(String service) {
    services = service;
  }

  setSum(int sum) {
    this.sum = sum;
  }

  setBalance(int balance) {
    this.balance = balance;
  }
}

List<Users> users = [
  Users("Admin", 1234, 10000, 12345678),
  Users("Bela", 5678, 1500000, 87654321),
  Users("Bale", 9011, 500000, 23456789),
  Users("Bael", 1213, 2500000, 98765432)
];
Users user;

void balance(int nominal) {
  var balnc = user.getBalance() + nominal;
  user.setBalance(balnc);
}
