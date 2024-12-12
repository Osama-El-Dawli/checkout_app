import 'package:checkout_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onTap});
  final String text;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: double.infinity,
          height: 65,
          decoration: BoxDecoration(
            color: const Color(0xff34a853),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: Styles.style22,
            ),
          ),
        ),
      ),
    );
  }
}
