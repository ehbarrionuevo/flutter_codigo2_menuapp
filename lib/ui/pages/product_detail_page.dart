import 'package:flutter/material.dart';
import 'package:menuapp/models/product_model.dart';
import 'package:menuapp/ui/general/colors.dart';
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
                      spacing30,
                      H2(
                        text: model.title,
                        fontWeight: FontWeight.w600,
                      ),
                      spacing6,
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 9.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: kBrandPrimaryColor,
                            ),
                            child: H6(
                              text: model.category,
                              color: Colors.white,
                            ),
                          ),
                          spacingWidth6,
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 18.0,
                          ),
                          H5(text: model.rate.toDouble().toString()),
                        ],
                      ),
                      spacing14,
                      H5(
                        text: model.description,
                        height: 1.48,
                        color: kBrandSecondaryColor.withOpacity(0.65),
                      ),
                      spacing10,
                      H4(
                        text: "Ingredientes",
                        fontWeight: FontWeight.w600,
                      ),
                      spacing10,
                      Wrap(
                        runSpacing: 0,
                        spacing: 12.0,
                        children: model.ingredients
                            .map(
                              (e) => Chip(
                                label: Text(e),
                              ),
                            )
                            .toList(),
                      ),
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
