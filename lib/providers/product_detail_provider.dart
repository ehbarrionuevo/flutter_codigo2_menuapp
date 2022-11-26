

import 'package:flutter/material.dart';

class ProductDetailProvider extends ChangeNotifier{

  int quantity = 20;
  double price = 0;

  void addQuantity(){
    quantity++;
    notifyListeners();
  }

  void removeQuantity(){
    quantity--;
    notifyListeners();
  }

}