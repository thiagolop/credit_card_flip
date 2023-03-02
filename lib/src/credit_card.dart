import 'package:credit_card_flip/credit_card_flip.dart';
import 'package:flutter/material.dart';
import 'card/widgets/credit_card_back.dart';
import 'card/widgets/credit_card_front.dart';
import 'card/widgets/credid_card_colors.dart';

enum CreditCardFace { front, back }

class CreditCard extends StatelessWidget {
  final Color? cardcolor;
  final Decoration? decoration;
  final String cardNumber;
  final String cardHolder;
  final String cardExpiration;
  final String bank;
  final CreditCardFace face;
  final Size? size;
  final CreditCardFlag? flag;
  final Widget? flagLogo;
  final String securityCode;
  final String? qrCode;
  final Color colorText;

  const CreditCard({
    super.key,
    this.cardcolor,
    this.decoration,
    required this.cardNumber,
    required this.cardHolder,
    required this.cardExpiration,
    required this.bank,
    required this.face,
    this.size,
    this.flag,
    this.flagLogo,
    required this.securityCode,
    this.qrCode,
    this.colorText = CreditCardColors.textColor,
  }) : super();

  Size getCardSize() {
    return const Size(340, 220);
  }

  Decoration? getDecoration() {
    if (decoration != null) return decoration;
    if (cardcolor != null) return null;
    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFF1F1F1F),
          Color(0xFF404040),
          Color(0xFF777777),
          Color(0xFFA1A1A1),
        ],
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.white.withOpacity(0.2),
          spreadRadius: 1,
          blurRadius: 10,
          offset: const Offset(4, 8),
        ),
      ],
    );
  }

  double get scale {
    if (this.size == null) return 1;
    final size = getCardSize();
    double sW = this.size!.width / size.width;
    double sH = this.size!.height / size.height;
    return sH < sW ? sH : sW;
  }

  @override
  Widget build(BuildContext context) {
    final size = getCardSize();

    return Transform.scale(
      scale: scale,
      child: Container(
        height: size.height,
        width: size.width,
        padding: const EdgeInsets.all(1),
        child: Visibility(
          visible: face == CreditCardFace.front,
          replacement: CreditCardBack(
            cardExpiration: cardExpiration,
            color: cardcolor,
            decoration: getDecoration(),
            cardNumber: cardNumber,
            size: size,
            securityCode: securityCode,
            qrCode: qrCode,
            colorText: colorText,
          ),
          child: CreditCardFront(
            colorText: colorText,
            color: cardcolor,
            decoration: getDecoration(),
            cardNumber: cardNumber,
            cardHolder: cardHolder,
            bank: bank,
            flagLogo: flagLogo,
            flag: flag,
          ),
        ),
      ),
    );
  }
}
