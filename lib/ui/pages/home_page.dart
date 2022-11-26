import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:menuapp/models/category_model.dart';
import 'package:menuapp/services/firestore_service.dart';
import 'package:menuapp/ui/general/colors.dart';
import 'package:menuapp/ui/widgets/category_widget.dart';
import 'package:menuapp/ui/widgets/general_widget.dart';
import 'package:menuapp/ui/widgets/item_food_widget.dart';
import 'package:menuapp/ui/widgets/text_custom_widget.dart';
import 'package:menuapp/utils/assets_data.dart';

class HomePage extends StatelessWidget {

  final CollectionReference _categoryReference =
      FirebaseFirestore.instance.collection('categories');

  final MyFirestoreService _categoryService = MyFirestoreService();


  @override
  Widget build(BuildContext context) {

    print(_categoryService.getCategories());

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                H1(text: "Bievenido a"),
                H1(
                  text: "Las espadas de Ramón",
                  color: kBrandPrimaryColor,
                ),
                spacing14,
                Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.06),
                        blurRadius: 12,
                        offset: const Offset(4, 4),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Busca tu plato favorito",
                      hintStyle: TextStyle(
                        fontSize: 13.0,
                        color: kBrandSecondaryColor.withOpacity(0.55),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 14.0, vertical: 15.0),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 20.0,
                        color: kBrandSecondaryColor.withOpacity(0.55),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                spacing20,
                FutureBuilder(
                  future: _categoryService.getCategories(),
                  builder: (BuildContext context, AsyncSnapshot snap){
                    if(snap.hasData){
                      List<CategoryModel> categories = snap.data;
                      return  SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                        child: Row(
                          children: categories.map((e) => CategoryWidget(model:e),).toList(),
                        ),
                      );
                    }
                    return CircularProgressIndicator();
                  },
                ),
                spacing20,
                ItemFoodWidget(),
                ItemFoodWidget(),
                ItemFoodWidget(),
                ItemFoodWidget(),
                ItemFoodWidget(),
                ItemFoodWidget(),
                ItemFoodWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
