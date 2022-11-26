

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:menuapp/models/category_model.dart';

class MyFirestoreService{

  final CollectionReference _reference = FirebaseFirestore.instance.collection("categories");

  Future<List<CategoryModel>> getCategories() async{
    QuerySnapshot collection = await _reference.get();
    List<QueryDocumentSnapshot> docs = collection.docs;
    List<CategoryModel> categories = [];
    for(var item in docs){
      CategoryModel model = CategoryModel.fromJson(item.data() as Map<String, dynamic>);
      model.id = item.id;
      categories.add(model);
    }
    return categories;
  }

}