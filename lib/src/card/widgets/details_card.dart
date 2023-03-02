import 'package:flutter/material.dart';

class DetailsCard extends StatelessWidget {
  final String label;
  final String value;
  final Color colorText;
  const DetailsCard({
    super.key,
    required this.label,
    required this.value,
    required this.colorText,
  }) : super();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '$label ',
          style: TextStyle(
            color: colorText,
            fontSize: 14,
            fontFamily: 'CourrierPrime',
            package: 'credit_card_flip',
          ),
        ),
        const SizedBox(height: 4),
        Text(
          '$value ',
          style: TextStyle(
            color: colorText,
            fontSize: 18,
            fontFamily: 'CourrierPrime',
            package: 'credit_card_flip',
          ),
        ),
      ],
    );
  }
}
