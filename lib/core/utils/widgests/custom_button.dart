import 'package:flutter/material.dart';
import 'package:test_app/core/utils/styles.dart';
import '../../../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundColor,
    required this.textcolor,
    this.borderRadius,
    required this.text,
    this.fontSize,
  });
  final Color backgroundColor;
  final Color textcolor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: (backgroundColor),
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(12),
            )),
        onPressed: () {},
        child: Text(
          text,
          style: Styles.textstyle18.copyWith(
            fontFamily: KMontserrat,
            color: textcolor,
            fontWeight: FontWeight.w900,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
