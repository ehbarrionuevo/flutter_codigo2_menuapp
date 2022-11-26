

import 'package:flutter/material.dart';
import 'package:menuapp/models/category_model.dart';
import 'package:menuapp/services/firestore_service.dart';

class CategoryProvider extends ChangeNotifier{

  List<CategoryModel> categories = [];
  bool isLoading = true;
  final MyFirestoreService _myFirestoreService = MyFirestoreService();

  Future<void> getCategoryData() async{
    categories = await _myFirestoreService.getCategories();
    isLoading = false;
    notifyListeners();
  }

}

