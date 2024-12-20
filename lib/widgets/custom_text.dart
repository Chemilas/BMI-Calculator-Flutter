import 'package:bmier/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, this.fontSize, this.letterSpacing,
    this.fontWeight, required this.text, this.color, this.textAlign});

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
          color: color ?? AppColors.secondary,
          fontSize: fontSize ?? 40,
          letterSpacing: letterSpacing,
          fontWeight: fontWeight),
      textAlign: textAlign,
    );
  }
}
