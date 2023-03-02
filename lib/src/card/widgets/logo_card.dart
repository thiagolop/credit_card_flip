import 'package:flutter/material.dart';

class LogoCard extends StatelessWidget {
  final Widget? logo;
  const LogoCard({super.key, required this.logo});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 60,
      child: logo,
    );
  }
}
