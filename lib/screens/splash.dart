import 'dart:async';
import 'package:bmi_calculator/widgets/custom_Text.dart';
import 'package:bmi_calculator/widgets/custom_Textfield.dart';
import 'package:flutter/material.dart';
import 'home_Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Timer? timer;

  @override
  void initState() {
    timer = Timer(const Duration(seconds: 2), () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const HomeScreen()));
    });
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
              width: 200,
              child: Image.asset('assets/images/splash.png',fit: BoxFit.cover,),
            ),
            const SizedBox(height: 15,),
            const CustomText(text: 'CHECK YOUR BMI!',fontSize: 30,color: CustomTextField.backcolour,)
          ],
        ),
      ),
    );
  }
}

