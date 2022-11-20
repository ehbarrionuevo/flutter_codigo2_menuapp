import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:menuapp/ui/general/colors.dart';
import 'package:menuapp/ui/widgets/general_widget.dart';
import 'package:menuapp/ui/widgets/text_custom_widget.dart';
import 'package:menuapp/utils/assets_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Bievenido a",
                  style: TextStyle(
                      color: kBrandSecondaryColor.withOpacity(0.90),
                      fontSize: 26.0,
                      fontWeight: FontWeight.w600,
                      height: 1),
                ),
                Text(
                  "Las espadas de Ramón",
                  style: TextStyle(
                    color: kBrandPrimaryColor.withOpacity(0.90),
                    fontSize: 26.0,
                    height: 1,
                    fontWeight: FontWeight.w600,
                  ),
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
                spacing14,
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    color: kBrandSecondaryColor.withOpacity(0.07),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        AssetData.iconFavorite,
                        height: 20.0,
                        color: kBrandSecondaryColor.withOpacity(0.90),
                      ),
                      spacingWidth6,
                      H5(
                        text: "Entradas",
                      ),
                    ],
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
