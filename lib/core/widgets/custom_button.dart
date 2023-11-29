import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key, this.onTap, required this.text, this.isLoading = false})
      : super(key: key);

  final bool isLoading;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: ShapeDecoration(
            color: const Color(0xFF34A853),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator()
              : Text(
              text, textAlign: TextAlign.center, style: Styles.style22),
        ),
      ),
    );
  }
}
