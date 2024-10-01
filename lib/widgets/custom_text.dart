import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bmi_calculator/widgets/custom_textfield.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, this.fontSize, this.letterSpacing, this.fontWeight, required this.text, this.color, this.textAlign});

  final double? fontSize;
  final double? letterSpacing;
  final FontWeight? fontWeight;
  final String text;
  final Color? color;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.poppins(
          color: color ?? CustomTextField.frontColor,
          fontSize: fontSize ?? 40,
          letterSpacing: letterSpacing,
          fontWeight: fontWeight),
      textAlign: textAlign,
    );
  }
}
