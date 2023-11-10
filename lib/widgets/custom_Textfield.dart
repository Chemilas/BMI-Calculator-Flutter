import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.controller});

  final String hintText;
  final TextEditingController? controller;

  static const backcolour = Color(0xff37898c);
  static const frontcolor= Colors.white;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: 290,
      child: TextFormField(
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        keyboardType: TextInputType.number,
        maxLength: 3,
        cursorColor: frontcolor,
        style: GoogleFonts.poppins(fontSize: 30,fontWeight: FontWeight.w500,color: Colors.white),
         controller: controller,
         decoration: InputDecoration(
           hintText: hintText,
           hintStyle: GoogleFonts.poppins(color: Colors.white,fontSize: 30,),
           focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: frontcolor,width: 3),),
           enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: frontcolor,width: 3))
         ),
      ),
    );
  }
}
