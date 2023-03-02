import 'package:flutter/material.dart';

class NumberCard extends StatelessWidget {
  final String cardNumber;
  final Color colorText;
  final bool obfuscate;
  const NumberCard({
    super.key,
    required this.cardNumber,
    required this.colorText,
    required this.obfuscate,
  });

  String get cardNumberText {
    if (obfuscate == false) return cardNumber;
    String text = '';
    for (int i = 0; i < cardNumber.length; i++) {
      String character = cardNumber[i];
      if (character == ' ') {
        text += ' ';
      } else if (i <= cardNumber.length - 5) {
        text += '*';
      } else {
        text += cardNumber[i];
      }
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      cardNumberText,
      style: TextStyle(
        color: colorText,
        fontSize: 22,
        fontFamily: 'CourrierPrime',
        package: 'credit_card_flip',
      ),
    );
  }
}
