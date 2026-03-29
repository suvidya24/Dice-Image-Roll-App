import 'package:flutter/material.dart';
import 'package:diceapp/screens/dice_app_screen.dart'; 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Dice App", home: DiceAppScreen(), 
    );
  }
}
