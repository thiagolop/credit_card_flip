import 'package:flutter/material.dart';

class TitleCard extends StatelessWidget {
  final String bank;
  final Color colorText;
  const TitleCard({
    super.key,
    required this.bank,
    required this.colorText,
  }) : super();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: Text(
            bank,
            style: TextStyle(
              color: colorText,
              fontSize: 24,
              fontFamily: 'CourrierPrime',
              package: 'credit_card_flip',
            ),
          ),
        ),
      ],
    );
  }
}
