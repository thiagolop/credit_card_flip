import 'package:flutter/material.dart';

class MagneticStripe extends StatelessWidget {
  final double height;
  const MagneticStripe({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      color: Colors.black,
    );
  }
}
