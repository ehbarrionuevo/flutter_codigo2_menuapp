import 'package:flutter/material.dart';
import 'package:menuapp/models/product_model.dart';
import 'package:menuapp/ui/widgets/general_widget.dart';
import 'package:menuapp/ui/widgets/text_custom_widget.dart';

class ProductDetailPage extends StatelessWidget {
  ProductModel model;

  ProductDetailPage({
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          //Fondo
          Column(
            children: [
              Image.network(
                model.image,
                height: height * 0.40,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ],
          ),
          //
          Column(
            children: [
              SizedBox(
                height: height * 0.35,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(38.0),
                      topLeft: Radius.circular(38.0),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 80.0,
                            height: 10.0,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ],
                      ),
                      spacing20,
                      H2(text: model.title,),
                      H5(text: model.description),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
