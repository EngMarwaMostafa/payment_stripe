import 'package:flutter/cupertino.dart';

class CustomDashedLine extends StatelessWidget {
  const CustomDashedLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(
            30,
                (index) =>
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 1),
                    child: Container(
                      color: const Color(0xff888888),
                      height: 1,
                    ),
                  ),
                )));
  }
}