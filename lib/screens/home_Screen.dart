import 'package:bmi_calculator/screens/result_Screen.dart';
import 'package:bmi_calculator/widgets/custom_Text.dart';
import 'package:bmi_calculator/widgets/custom_Textfield.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();

  late SharedPreferences preferences ;
  void setString()async{
    preferences = await SharedPreferences.getInstance();
    preferences.setString("weight", weightController.text);
    preferences.setString("height", heightController.text);
  }
  void getString()async{
    preferences = await SharedPreferences.getInstance();
    weightController.text= preferences.getString("weight")!;
    heightController.text =preferences.getString("height")!;
  }

  double? _result;
  @override
  void initState() {
    getString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomTextField.backcolour,
        body: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 10),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const CustomText(text: 'Calculate Your BMI...',fontSize: 30,textAlign: TextAlign.center,),
                      const SizedBox(height: 55,),
                      const CustomText(text: 'Weight (in Kg)'),
                      CustomTextField(
                        hintText: '0',
                        controller: weightController,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const CustomText(text: 'Height (in cm)'),
                      CustomTextField(
                        hintText: '0',
                        controller: heightController,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                          width: 270,
                          height: 65,
                          child: ElevatedButton(
                              onPressed: () {
                                setString();
                                calculateBMI();
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Results(result: _result,
                                )));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: CustomTextField.frontcolor,
                                shape: const StadiumBorder(),
                              ),
                              child: const CustomText(
                                text: 'Calculate',
                                color: CustomTextField.backcolour,
                              )))
                    ],
                  ),
                ),
              ),
            )),
    );
  }

  void calculateBMI() {
    double height = double.parse(heightController.text) / 100;
    double weight = double.parse(weightController.text);

    double heightSquare = height * height;
    double result = weight / heightSquare;
    _result = result;
  }
}
