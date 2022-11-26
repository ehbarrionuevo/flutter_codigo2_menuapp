

import 'package:flutter/material.dart';

class ProductDetailProvider extends ChangeNotifier{

  int quantity = 1;
  double price = 0;

  void addQuantity(){
    quantity++;
    price = price * quantity;
    notifyListeners();
  }

  void removeQuantity(){
    quantity--;
    price = price * quantity;
    notifyListeners();
  }

}