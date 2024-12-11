import 'package:bmier/widgets/custom_text.dart';
import 'package:bmier/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class Results extends StatefulWidget {
  const Results({super.key, this.result, });

  final double? result;

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {

  String comment() {
    if ( widget.result! >= 25) {
      return 'You are Overweight.\nYou Should consider a Diet!';
    } else if (widget.result! > 18.5) {
      return 'You are having a normal BMI.';
    } else {
      return 'You are Underweight.\nYou Should Eat More!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomTextField.backColour,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          const CustomText(text: 'Your BMI is ',fontSize: 50,),
          CustomText(text: widget.result!.toStringAsFixed(2),fontSize: 90,),
          CustomText(text: comment(),fontSize: 30,textAlign: TextAlign.center,),

        ],),
      ),
    );
  }
}
