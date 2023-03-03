
# Credit Card Flip

The credit card flip package also offers additional features that make the payment experience even more convenient and personalized. For example, the system has a resource for self-recognition of the card's flag, making it unnecessary for the user to enter the flag manually, it also has the option of inserting a widget customized by the user in the flagLogo. In addition, the package allows the insertion of a security code (CVV) on the back of the card, ensuring an extra level of security for online transactions.

Another important feature is the option to use the card that rotates, which allows the user to view the back of the card, as well as the front, in an animated and intuitive interface. In addition, it is possible to choose to show only the front or back of the card, according to the user's preferences.

With these additional options, the credit card flip package provides a personalized, secure and convenient payment experience for users.


![Credit Card Flip](https://user-images.githubusercontent.com/109871891/222574212-5c0df6ec-41e2-4f30-8902-df150f604a6e.gif)

```dart
CreditCardFlip(
  bank: 'Bank of America',
  cardExpiration: '12/22',
  cardHolder: 'John Doe',
  cardNumber: '6011 5678 9012 3451',
  securityCode: '123',
  qrCode: 'https://github.com/thiagolop',
)

CreditCardFlip(
size: const Size(100, 150),
bank: 'Bank of America',
cardExpiration: '12/22',
cardHolder: 'John Doe',
cardNumber: '6011 5678 9012 3451',
securityCode: '123',
flagLogo: Container(color: Colors.blue),
),
```

## Authors


- [@Thiago F. Lopes](https://github.com/thiagolop)
- [@Christian B. Almeida ](https://github.com/cbalmeida)


