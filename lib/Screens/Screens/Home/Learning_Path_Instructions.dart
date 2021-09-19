import 'package:flutter/material.dart';
import 'package:mentprism/ReusableAssets/Progress_Bar.dart';
import 'package:mentprism/Screens/Screens/Home/Learing_path_Quiz.dart';
import 'package:mentprism/const.dart';
import 'package:mentprism/ReusableAssets/rounded_BackButton.dart';
import 'L_Path_Init_Text.dart';

class Learning_Path_Instructions extends StatefulWidget {
  @override
  _Learning_Path_InstructionsState createState() =>
      _Learning_Path_InstructionsState();
}

class _Learning_Path_InstructionsState
    extends State<Learning_Path_Instructions> {
  int current_text_index = 0;
  L_Path_intitialText l_path_instructions = L_Path_intitialText();

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
                    'Lets go deeper into: Time Management',
                    style: white30HeadingLight,
                  ),
                ),
                L_Path_Instructions(
                  l_path_intitialText: l_path_instructions,
                  initial_text_index: current_text_index,
                  ontap: current_text_index !=
                          (l_path_instructions.initial_texts.length - 1)
                      ? () {
                          setState(() {
                            current_text_index++;
                          });
                        }
                      : () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Learning_Path_Quiz();
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

class L_Path_Instructions extends StatelessWidget {
  L_Path_Instructions(
      {this.initial_text_index, this.l_path_intitialText, this.ontap});

  final L_Path_intitialText l_path_intitialText;
  final int initial_text_index;

  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 10),
        child: Text(
          l_path_intitialText.initial_texts[initial_text_index],
          style: whitecolorLight20,
        ),
      ),
    );
  }
}
