

import 'package:cloud_firestore/cloud_firestore.dart';

class MyFirestoreService{

  final CollectionReference _reference = FirebaseFirestore.instance.collection("categories");

  getCategories() async{
    QuerySnapshot collection = await _reference.get();
    List<QueryDocumentSnapshot> docs = collection.docs;
    for(var item in docs){
      print(item);
    }
  }

}