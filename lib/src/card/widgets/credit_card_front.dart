import 'package:credit_card_flip/credit_card_flip.dart';
import 'package:credit_card_flip/src/card/widgets/chip_card.dart';
import 'package:credit_card_flip/src/card/widgets/credid_card_colors.dart';
import 'package:credit_card_flip/src/card/widgets/details_card.dart';
import 'package:flutter/material.dart';
import 'number_card.dart';
import 'title_card.dart';
import 'logo_card.dart';

class CreditCardFront extends StatelessWidget {
  final Color? color;
  final Decoration? decoration;
  final String cardNumber;
  final String cardHolder;
  final String bank;
  final CreditCardFlag? flag;
  final Widget? flagLogo;
  final Color colorText;

  const CreditCardFront({
    super.key,
    this.color,
    this.decoration,
    required this.cardNumber,
    required this.cardHolder,
    required this.bank,
    this.flag,
    this.flagLogo,
    this.colorText = CreditCardColors.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      child: Container(
        color: color == null && decoration == null ? const Color(0xFFFF4000) : null,
        decoration: decoration,
        height: 200,
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            TitleCard(bank: bank, colorText: colorText),
            const SizedBox(height: 10),
            const ChipCard(),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: NumberCard(cardNumber: cardNumber, colorText: colorText, obfuscate: true),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                DetailsCard(label: 'CARD HOLDER', value: cardHolder, colorText: colorText),
                LogoCard(logo: flagLogo ?? flag?.logo ?? CreditCardFlag.getFlag(cardNumber)?.logo,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
