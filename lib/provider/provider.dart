import 'package:flutter/material.dart';

class Mycounterscreenprovider with ChangeNotifier {
  int Quantity = 1;
  int price = 500;
  int finalprice = 0;
  int get count => Quantity;

  void incrementCounter() {
    Quantity++;
    newprice();
    notifyListeners();
  }

  void decrementcounter() {
    Quantity--;
    newp();
    notifyListeners();
  }

// price update

  void newprice() {
    if (Quantity == 1) {
      price = 500;
    } else {
      price = price + 500;
    }
    ;
  }

  void newp() {
    if (Quantity == 1) {
      price = 500;
    } else {
      price = price - 500;
    }
    
  }
}