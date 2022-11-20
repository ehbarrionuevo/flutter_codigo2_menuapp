import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:menuapp/ui/general/colors.dart';
import 'package:menuapp/utils/assets_data.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: kBrandSecondaryColor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(28.0),
            topRight: Radius.circular(28.0),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          unselectedLabelStyle: TextStyle(
            color: Colors.white70,
          ),
          unselectedItemColor: Colors.white70,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AssetData.iconHome,
                color: Colors.white,
              ),
              label: "Inicio",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AssetData.iconCart,
                color: Colors.white,
              ),
              label: "Ordenes",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AssetData.iconFavorite,
                color: Colors.white,
              ),
              label: "Favoritos",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AssetData.iconProfile,
                color: Colors.white,
              ),
              label: "Mi perfil",
            ),
          ],
        ),
      ),
    );
  }
}
