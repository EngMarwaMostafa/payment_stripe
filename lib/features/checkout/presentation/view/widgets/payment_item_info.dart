
import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';

class PaymentItemInfo extends StatelessWidget {
  const PaymentItemInfo({Key? key,
    required this.title,
    required this.value}) : super(key: key);
  final String title,value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Date',
          textAlign: TextAlign.center,
          style: Styles.style18,
        ),
        Text('01/24/2023',
          style: Styles.styleBold18,
        )
      ],
    );
  }
}