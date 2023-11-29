import 'package:flutter/cupertino.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
   const CustomCreditCard({Key? key, required this.formKey, required this.autovalidateMode}) : super(key: key);
   final AutovalidateMode autovalidateMode;
   final GlobalKey<FormState> formKey ;
  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '',
      expiryDate = '',
      cardHolderName = '',
      cvvCode = '',
      onCreditCardWidgetChange = '';
  bool showBackView = false;

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey ;
    return Column(
      children: [
        CreditCardWidget(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView: showBackView,
          isHolderNameVisible: true,
          onCreditCardWidgetChange: (value) {},
        ),
        CreditCardForm(
          autovalidateMode: widget.autovalidateMode,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            onCreditCardModelChange: (carditCardModel) {
              cardHolderName = carditCardModel.cardHolderName;
              expiryDate = carditCardModel.expiryDate;
              cvvCode = carditCardModel.cvvCode;
              cardNumber = carditCardModel.cardNumber;
              showBackView = carditCardModel.isCvvFocused;
              setState(() {});
            },
            formKey:widget.formKey)
      ],
    );
  }
}