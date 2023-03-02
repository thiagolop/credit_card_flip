import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrcodeCard extends StatelessWidget {
  final String qrCode;
  const QrcodeCard({
    super.key,
    required this.qrCode,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Center(
        child: QrImage(
          padding: const EdgeInsets.all(4),
          data: qrCode,
          version: QrVersions.auto,
          size: 100,
        ),
      ),
    );
  }
}
