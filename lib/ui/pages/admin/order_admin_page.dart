

import 'package:flutter/material.dart';
import 'package:menuapp/ui/general/colors.dart';
import 'package:menuapp/ui/widgets/general_widget.dart';
import 'package:menuapp/ui/widgets/text_custom_widget.dart';

class OrderAdminPage extends StatelessWidget {
  const OrderAdminPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                H1(
                  text: "Listado de ordenes",
                ),
                H6(
                  text: "Ordenes actuales por revisar",
                  color: kBrandSecondaryColor.withOpacity(0.60),
                ),
                spacing20,


              ],
            ),
          ),
        ),
      ),
    );
  }
}
