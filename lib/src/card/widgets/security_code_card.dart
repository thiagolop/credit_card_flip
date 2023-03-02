import 'package:flutter/material.dart';

class SignatureStripe extends StatelessWidget {
  final double height;

  final Color colorText;

  const SignatureStripe({
    super.key,
    required this.height,
    required this.colorText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: height,
      color: colorText,
      child: Center(
          child: Text(
        '',
        style: TextStyle(
          color: colorText.computeLuminance() > 0.5 ? Colors.black54 : Colors.white38,
          fontSize: 18,
          fontFamily: 'CourrierPrime',
        ),
      )),
    );
  }
}
