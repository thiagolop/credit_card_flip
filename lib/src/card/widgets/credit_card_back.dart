import 'package:credit_card_flip/src/card/widgets/details_card.dart';
import 'package:credit_card_flip/src/card/widgets/qrcode_card.dart';
import 'package:flutter/material.dart';
import 'credid_card_colors.dart';
import 'magnetic_stripe_card.dart';
import 'number_card.dart';
import 'security_code_card.dart';

class CreditCardBack extends StatelessWidget {
  final Color? color;
  final Decoration? decoration;
  final String cardExpiration;
  final Size size;
  final String securityCode;
  final String? qrCode;
  final Color colorText;
  final String cardNumber;

  const CreditCardBack({
    super.key,
    this.color,
    this.decoration,
    required this.cardExpiration,
    required this.size,
    required this.securityCode,
    this.qrCode,
    this.colorText = CreditCardColors.textColor,
    required this.cardNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Container(
        color: color == null && decoration == null ? const Color(0xFFffd700) : null,
        decoration: decoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SignatureStripe(height: size.height, colorText: colorText),
                  qrCode != null ? QrcodeCard(qrCode: qrCode!) : Container(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: NumberCard(cardNumber: cardNumber, colorText: colorText, obfuscate: false),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: DetailsCard(label: 'VALID THRU', value: cardExpiration, colorText: colorText),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: DetailsCard(label: 'SEC CODE', value: securityCode, colorText: colorText),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: MagneticStripe(height: size.height),
            ),
          ],
        ),
      ),
    );
  }
}
