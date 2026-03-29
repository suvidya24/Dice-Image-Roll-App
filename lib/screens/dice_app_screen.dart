import 'package:flutter/material.dart';
import 'dart:math';

class DiceAppScreen extends StatefulWidget {
  const DiceAppScreen({super.key});
  @override
  State<DiceAppScreen> createState() => _DiceAppScreenState();
}

class _DiceAppScreenState extends State<DiceAppScreen> {
  int diceNumber = 1;

  void rollDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    }); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: Text(
          "Dice App",
          style: TextStyle(
            fontSize: 24, 
            fontWeight: FontWeight.bold, 
            color: Colors.black,
            ),
        ),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/dice$diceNumber.png',
              width: 150,
            ),

            const SizedBox(height: 20), 

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: rollDice, 
              child: const Text("Roll Dice"), 
            ),
          ],
        ),
      ),
    );
  }
}
