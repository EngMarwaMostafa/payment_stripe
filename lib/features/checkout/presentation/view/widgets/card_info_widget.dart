
import 'package:flutter/material.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 305,
      padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 22),
      decoration:  ShapeDecoration(
          color: Colors.white,
          shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)
          )
      ),
      child: Row(
        children: [
          Image.asset('assets/images/card.png'),
          const SizedBox(width: 23,),
          const Text.rich(
              TextSpan(
                  text: 'Credit Card',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0
                  )
              )
          )
        ],
      ),
    );
  }
}
