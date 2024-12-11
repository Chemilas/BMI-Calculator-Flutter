import 'package:bmier/views/splash.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main(){

  // Initialization :
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Google Ads :
  MobileAds.instance.initialize();

  // Run App :
  runApp(const BMIApp());
}

class BMIApp extends StatelessWidget {
  const BMIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
