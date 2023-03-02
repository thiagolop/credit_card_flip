import 'package:flutter/material.dart';

enum CreditCardFlag {
  mastercard('assets/imagens/mastercard.png', CreditCardFlagValidador([16], ['51', '52', '53', '54', '55'])),

  visa('assets/imagens/visa.png', CreditCardFlagValidador([13, 16], ['4'])),

  elo('assets/imagens/elo.png', CreditCardFlagValidador([16], ['636368', '504175', '636297'])),

  maestro('assets/imagens/maestro.png', CreditCardFlagValidador([12, 13, 14, 15, 16, 17], ['5018', '5020', '5038', '6304', '6759', '6761', '6763'])),

  jbc('assets/imagens/jbc.png', CreditCardFlagValidador([16], ['3528', '3529', '353', '354', '355', '356', '357', '358'])),

  discover('assets/imagens/Discover.jpg',
      CreditCardFlagValidador([16], ['6011', '6222', '6223', '6224', '6225', '6226', '6227', '6228', '644', '645', '646', '647', '648', '649', '65'])),

  unionpay(
      'assets/imagens/Unionpay.jpg',
      CreditCardFlagValidador(
          [16, 17, 18, 19], ['622128', '622129', '62213', '62214', '62215', '62216', '62217', '62218', '62219', '62290', '62291', '622920', '622921'])),

  dinersClubUS('assets/imagens/Diners-Club-Logo.png', CreditCardFlagValidador([16], ['54', '55'])),

  americanExpress('assets/imagens/american_express.png', CreditCardFlagValidador([15], ['34', '37']));

  final String assetPath;
  final CreditCardFlagValidador validador;
  const CreditCardFlag(this.assetPath, this.validador);
  Widget get logo => Image(image: AssetImage(assetPath, package: 'credit_card_flip'), height: 60, width: 60);

  static CreditCardFlag? getFlag(String cardNumber) {
    for (var flag in CreditCardFlag.values) {
      if (flag.validador.isValid(cardNumber)) {
        return flag;
      }
    }
    return null;
  }
}

class CreditCardFlagValidador {
  final List<int> lengths;
  final List<String> prefixes;

  const CreditCardFlagValidador(this.lengths, this.prefixes);

  bool isValid(String cardNumber) {
    String text = cardNumber.replaceAll(' ', '');
    if (lengths.contains(text.length) == false) return false;

    for (var prefix in prefixes) {
      if (text.startsWith(prefix)) {
        return true;
      }
    }
    return false;
  }
}
