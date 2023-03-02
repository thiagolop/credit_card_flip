
# Credit Card Flip

The credit card flip package also offers additional features that make the payment experience even more convenient and personalized. For example, the system has a resource for self-recognition of the card's flag, making it unnecessary for the user to enter the flag manually, it also has the option of inserting a widget customized by the user in the flagLogo. In addition, the package allows the insertion of a security code (CVV) on the back of the card, ensuring an extra level of security for online transactions.

Another important feature is the option to use the card that rotates, which allows the user to view the back of the card, as well as the front, in an animated and intuitive interface. In addition, it is possible to choose to show only the front or back of the card, according to the user's preferences.

With these additional options, the credit card flip package provides a personalized, secure and convenient payment experience for users.

## Get started

add dependency
You can use the command to add dio as a dependency with the latest stable version:

$ dart pub add credit_card_flip

Or you can manually add dio in the dependencies section in your pubspec.yaml:

dependencies:
  credit_card_flip: ^replace-with-latest-version


## Super simples de usar 

```dart
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CreditCardFlip(
                bank: 'Bank of America',
                cardExpiration: '12/22',
                cardHolder: 'John Doe',
                cardNumber: '6011 5678 9012 3451',
                securityCode: '123',
                qrCode: 'https://github.com/thiagolop',
              ),
              CreditCard(
                bank: 'Bank of America',
                cardExpiration: '12/22',
                cardHolder: 'John Doe',
                cardNumber: '4223 3078 9012 3456',
                securityCode: '456',
                face: CreditCardFace.front,
              ),
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
```

## Authors


- [@Thiago F. Lopes](https://github.com/thiagolop)
- [@Christian B. Almeida ](https://github.com/cbalmeida)


