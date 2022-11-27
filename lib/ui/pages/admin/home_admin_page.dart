import 'package:flutter/material.dart';
import 'package:menuapp/ui/general/colors.dart';
import 'package:menuapp/ui/widgets/general_widget.dart';
import 'package:menuapp/ui/widgets/text_custom_widget.dart';

class HomeAdminPage extends StatelessWidget {
  const HomeAdminPage({Key? key}) : super(key: key);

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
                  text: "Panel Administrativo",
                ),
                H6(
                  text: "Opciones generales para la gestión de la empresa",
                  color: kBrandSecondaryColor.withOpacity(0.60),
                ),
                spacing20,
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14.0),
                    border: Border.all(
                      color: kBrandSecondaryColor.withOpacity(0.2),
                      width: 0.9,
                    ),
                  ),
                  child: ListTile(
                    title: H5(
                      text: "Ordenes",
                    ),
                    subtitle: H6(
                      text: "Listado de ordenes actuales",
                      color: kBrandSecondaryColor.withOpacity(0.60),
                    ),
                    trailing: const Icon(
                      Icons.chevron_right,
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
