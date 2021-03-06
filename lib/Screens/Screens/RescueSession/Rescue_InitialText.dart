import 'package:flutter/material.dart';
import 'package:mentprism/ReusableAssets/Progress_Bar.dart';
import 'package:mentprism/Screens/Screens/RescueSession/RescueQuiz.dart';
import 'package:mentprism/Screens/Screens/RescueSession/rescue_Init_Text.dart';
import 'package:mentprism/const.dart';
import 'package:mentprism/ReusableAssets/rounded_BackButton.dart';
import 'package:mentprism/Screens/Screens/RescueSession/Rescue_InitialText.dart';

class Rescue_Instructions extends StatefulWidget {
  @override
  _Rescue_InstructionsState createState() => _Rescue_InstructionsState();
}

class _Rescue_InstructionsState extends State<Rescue_Instructions> {
  int current_text_index = 0;
  Rescue_intitialText _rescue_intitialText = Rescue_intitialText();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBlue,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Progress_Tab(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 28, vertical: 40),
                  child: Text(
                    'Know What you are facing',
                    style: white30HeadingLight,
                  ),
                ),
                Problem_Description(
                  rescue_intitialText: _rescue_intitialText,
                  initial_text_index: current_text_index,
                  ontap: current_text_index !=
                          (_rescue_intitialText.initial_texts.length - 1)
                      ? () {
                          setState(() {
                            current_text_index++;
                          });
                        }
                      : () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return RescueQuiz();
                          }));
                        },
                )
              ],
            ),
            BackButtonRound(),
          ],
        ),
      ),
    );
  }
}

class Problem_Description extends StatelessWidget {
  Problem_Description(
      {this.initial_text_index, this.rescue_intitialText, this.ontap});

  final Rescue_intitialText rescue_intitialText;
  final int initial_text_index;

  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 10),
        child: Text(
          rescue_intitialText.initial_texts[initial_text_index],
          style: whitecolorLight20,
        ),
      ),
    );
  }
}
