import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment/core/utils/api_keys.dart';


import 'features/checkout/presentation/view/my_cart_view.dart';

void main() {

  Stripe.publishableKey=ApiKeys.puplishKey;
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:MyCartView()
    );
  }
}

//PaymentIntentModel create payment intent(amount,currency,customerId)
//keySecret createEphemeralKey(StrpiVersion,customerId)
//initPaymentSheet(merchantDisplayName ,intentClientSecret, ephemeralKeySecret)
//presentPaymentSheet()
/*
Future<void> initPaymentSheet() async {
  try {
    // 2. initialize the payment sheet
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        // Set to true for custom flow
        customFlow: false,
        // Main params
        merchantDisplayName: 'Flutter Stripe Store Demo',
        paymentIntentClientSecret: data['paymentIntent'],
        // Customer keys
        customerEphemeralKeySecret: data['ephemeralKey'],
        customerId: data['customer'],
      ),
    );
    setState(() {
      _ready = true;
    });
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error: $e')),
    );
    rethrow;
  }
}
 */




