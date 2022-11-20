import 'package:flutter/material.dart';
import 'package:menuapp/ui/general/colors.dart';

class OurText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;

  OurText({
    required this.text,
    required this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: kBrandSecondaryColor.withOpacity(0.90),
        fontSize: fontSize,
        fontWeight: fontWeight,
        height: 1
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
      fontWeight: FontWeight.bold,
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

class H4 extends StatelessWidget {
  final String text;

  H4({required this.text});

  @override
  Widget build(BuildContext context) {
    return OurText(
      text: text,
      fontSize: 18,
    );
  }
}

class H5 extends StatelessWidget {
  final String text;

  H5({required this.text});

  @override
  Widget build(BuildContext context) {
    return OurText(
      text: text,
      fontSize: 16,
    );
  }
}

class H6 extends StatelessWidget {
  final String text;

  H6({required this.text});

  @override
  Widget build(BuildContext context) {
    return OurText(
      text: text,
      fontSize: 13,
    );
  }
}
