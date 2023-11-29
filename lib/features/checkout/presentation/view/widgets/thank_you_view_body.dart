import 'package:flutter/material.dart';
import 'package:payment/features/checkout/presentation/view/widgets/thank_you_card.dart';

import 'custom_check_icon.dart';
import 'custom_dashed_line.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Stack(
          clipBehavior: Clip.none,
          children: [
            const ThankYouCard(),
            Positioned(
              bottom: MediaQuery
                  .of(context)
                  .size
                  .height * 0.2 + 20,
              left: 28,
              right: 28,
              child:const CustomDashedLine(),
            ),
            Positioned(
                left: -20,
                bottom: MediaQuery
                    .of(context)
                    .size
                    .height * 0.2,
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                )),
            Positioned(
              right: -20,
              bottom: MediaQuery
                  .of(context)
                  .size
                  .height * 0.2,
              child: const CircleAvatar(
                backgroundColor: Colors.white,
              ),
            ),
       const Positioned(
              top: -50,
              left: 0,
              right: 0,
              child: CustomCheckIcon()
            )
          ]),
    );
  }
}




