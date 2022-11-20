
import 'package:flutter/material.dart';
import 'package:menuapp/ui/general/colors.dart';

class OurText extends StatelessWidget {

  final String text;

  OurText({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: kBrandSecondaryColor.withOpacity(0.90),
      ),
    );
  }

}
