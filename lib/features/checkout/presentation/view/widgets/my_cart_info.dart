import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';

class OrderInfoItem extends StatelessWidget {
  const OrderInfoItem({Key? key,required this.value,required this.title}) : super(key: key);
  final String title,value;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          title,
          textAlign: TextAlign.center,
          style: Styles.style18,
        ),
        const Spacer(),
        Text(
          value,
          textAlign: TextAlign.center,
          style: Styles.style18,
        )
      ],
    );
  }
}