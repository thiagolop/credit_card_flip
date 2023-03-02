import 'package:credit_card_flip/credit_card_flip.dart';
import 'package:flutter/material.dart';
import 'card/widgets/credid_card_colors.dart';

class CreditCardFlip extends StatefulWidget {
  final Color? cardColor;
  final Decoration? decoration;
  final Color colorText;
  final String cardNumber;
  final String cardHolder;
  final String cardExpiration;
  final String bank;
  final Size? size;
  final CreditCardFlag? flag;
  final Widget? flagLogo;
  final String securityCode;
  final String? qrCode;
  const CreditCardFlip({
    super.key,
    this.cardColor,
    this.decoration,
    this.colorText = CreditCardColors.textColor,
    required this.cardNumber,
    required this.cardHolder,
    required this.cardExpiration,
    required this.bank,
    this.size,
    this.flag,
    this.flagLogo,
    required this.securityCode,
    this.qrCode,
  });

  @override
  State<CreditCardFlip> createState() => _CreditCardFlipState();
}

class _CreditCardFlipState extends State<CreditCardFlip> {
  Offset location = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: FractionalOffset.center,
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.002)
        ..rotateX(0.005 * location.dy)
        ..rotateY(-0.005 * location.dx),
      child: GestureDetector(
        onPanUpdate: (details) {
          location += details.delta;
          setState(() {});
        },
        onPanEnd: (details) {
          location = Offset.zero;
          setState(() {});
        },
        child: getCard(location),
      ),
    );
  }

  CreditCardFace getFace(Offset location) {
    int x = (location.dx.toInt().abs() + 314) ~/ 628;
    int y = (location.dy.toInt().abs() + 314) ~/ 628;
    bool bx = x % 2 == 0;
    bool by = y % 2 == 0;

    return (bx && by) ? CreditCardFace.front : CreditCardFace.back;
  }

  Widget getCard(Offset location) {
    CreditCardFace face = getFace(location);
    if (face == CreditCardFace.front) {
      return CreditCard(
        size: widget.size,
        cardcolor: widget.cardColor,
        colorText: widget.colorText,
        bank: widget.bank,
        cardExpiration: widget.cardExpiration,
        cardHolder: widget.cardHolder,
        cardNumber: widget.cardNumber,
        flag: widget.flag,
        flagLogo: widget.flagLogo,
        securityCode: widget.securityCode,
        qrCode: widget.qrCode,
        decoration: widget.decoration,
        face: face,
      );
    } else {
      return Transform.scale(
        scaleX: -1,
        child: CreditCard(
          size: widget.size,
          cardcolor: widget.cardColor,
          colorText: widget.colorText,
          bank: widget.bank,
          cardExpiration: widget.cardExpiration,
          cardHolder: widget.cardHolder,
          cardNumber: widget.cardNumber,
          flag: widget.flag,
          flagLogo: widget.flagLogo,
          securityCode: widget.securityCode,
          qrCode: widget.qrCode,
          decoration: widget.decoration,
          face: face,
        ),
      );
    }
  }
}
