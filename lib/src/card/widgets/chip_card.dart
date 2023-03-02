import 'package:flutter/material.dart';

class ChipCard extends StatelessWidget {
  const ChipCard({super.key});

  Widget get chip => const Image(image: AssetImage('assets/imagens/chip.jpg', package: 'credit_card_flip'), fit: BoxFit.cover);
  Widget get contactLess => const Image(image: AssetImage('assets/imagens/contact_less.png', package: 'credit_card_flip'), height: 20, width: 20);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 40,
          width: 55,
          decoration: const BoxDecoration(color: Colors.transparent),
          child: Center(child: chip),
        ),
        const SizedBox(width: 10),
        Transform(alignment: Alignment.center, transform: Matrix4.rotationZ(3.1415926535897932 / 1), child: contactLess),
      ],
    );
  }
}
