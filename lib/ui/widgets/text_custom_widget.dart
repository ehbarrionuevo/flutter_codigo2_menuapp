import 'package:flutter/material.dart';
import 'package:menuapp/ui/general/colors.dart';

class OurText extends StatelessWidget {
  final String text;
  final double fontSize;

  OurText({
    required this.text,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: kBrandSecondaryColor.withOpacity(0.90),
        fontSize: fontSize,
      ),
    );
  }
}

class H1 extends StatelessWidget {
  final String text;

  H1({required this.text});

  @override
  Widget build(BuildContext context) {
    return OurText(
      text: text,
      fontSize: 26,
    );
  }
}


class H2 extends StatelessWidget {
  final String text;

  H2({required this.text});

  @override
  Widget build(BuildContext context) {
    return OurText(
      text: text,
      fontSize: 24,
    );
  }
}

class H3 extends StatelessWidget {
  final String text;

  H3({required this.text});

  @override
  Widget build(BuildContext context) {
    return OurText(
      text: text,
      fontSize: 20,
    );
  }
}
