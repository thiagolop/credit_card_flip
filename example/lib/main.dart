import 'package:credit_card_flip/credit_card_flip.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Credit Card',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white12,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Flip', style: TextStyle(color: Colors.white, fontSize: 22)),
              CreditCardFlip(
                bank: 'Bank of America',
                cardExpiration: '12/22',
                cardHolder: 'John Doe',
                cardNumber: '6011 5678 9012 3451',
                securityCode: '123',
                qrCode: 'https://github.com/thiagolop',
              ),
              SizedBox(height: 10),
              Text('Front', style: TextStyle(color: Colors.white, fontSize: 22)),
              CreditCard(
                bank: 'Bank of America',
                cardExpiration: '12/22',
                cardHolder: 'John Doe',
                cardNumber: '4223 3078 9012 3456',
                securityCode: '456',
                face: CreditCardFace.front,
              ),
              SizedBox(height: 10),
              Text('Back', style: TextStyle(color: Colors.white, fontSize: 22)),
              CreditCard(
                bank: 'Bank of America',
                cardExpiration: '12/22',
                cardHolder: 'John Doe',
                cardNumber: '1234 5678 9012 3456',
                securityCode: '789',
                face: CreditCardFace.back,
                qrCode: 'https://www.linkedin.com/in/thiago-fernandes-lopes-725aa5224/',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
