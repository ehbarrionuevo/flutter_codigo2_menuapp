
import 'package:flutter/material.dart';
import 'package:menuapp/ui/general/colors.dart';

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
                    height: 1
                  ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
