import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../res/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.controller});

  final String hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: 290,
      child: TextFormField(
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(4)
        ],
        keyboardType: TextInputType.number,
        cursorColor: AppColors.secondary,
        style: GoogleFonts.poppins(
            fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white),
        controller: controller,
        decoration: InputDecoration(
            hintText: hintText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            hintStyle: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 30,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide:
                  const BorderSide(color: AppColors.secondary, width: 3),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: AppColors.secondary, width: 3))),
      ),
    );
  }
}
