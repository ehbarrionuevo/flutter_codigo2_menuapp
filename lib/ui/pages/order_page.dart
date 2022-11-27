import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:menuapp/models/product_order_model.dart';
import 'package:menuapp/providers/order_provider.dart';
import 'package:menuapp/ui/general/colors.dart';
import 'package:menuapp/ui/widgets/general_widget.dart';
import 'package:menuapp/ui/widgets/text_custom_widget.dart';
import 'package:provider/provider.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    OrderProvider orderProvider =
        Provider.of<OrderProvider>(context, listen: true);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                H1(
                  text: "Mis Ordenes",
                ),
                ...orderProvider.orders.map(
                  (ProductOrderModel e) => Container(
                    margin: const EdgeInsets.symmetric(vertical: 7.0),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(14.0),
                          child: Image.network(
                            e.image,
                            width: 80,
                            height: 90,
                            fit: BoxFit.cover,
                          ),
                        ),
                        spacingWidth10,
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              H5(
                                text: e.title,
                                fontWeight: FontWeight.w600,
                              ),
                              spacing3,
                              H6(text: "Cant. ${e.quantity}"),
                              spacing3,
                              InkWell(
                                onTap: (){
                                  orderProvider.removeProduct(e);
                                },
                                child: H6(text: "Eliminar"),
                              ),
                            ],
                          ),
                        ),
                        H5(
                          text: "S/ ${e.price.toStringAsFixed(2)}",
                          fontWeight: FontWeight.w600,
                          color: kBrandSecondaryColor.withOpacity(0.75),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
