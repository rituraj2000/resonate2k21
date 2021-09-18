import 'package:flutter/material.dart';
import 'package:mentprism/ReusableAssets/Progress_Bar.dart';
import 'package:mentprism/ReusableAssets/rounded_BackButton.dart';
import 'package:mentprism/const.dart';

class RescueQuiz extends StatefulWidget {
  @override
  _RescueQuizState createState() => _RescueQuizState();
}

class _RescueQuizState extends State<RescueQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBlue,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Progress_Tab(),
                Top_Heading(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  child: Text(
                    'What would you do if a girl you like is off your league',
                    style: whitecolorLight20,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: secondaryBlue,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text(
                    'Answer1',
                    style: whitecolorBold14,
                  ),
                ),
              ],
            ),
            BackButtonRound(),
          ],
        ),
      ),
    );
  }
}

// Widgets

//Headings
class Top_Heading extends StatelessWidget {
  const Top_Heading({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 40),
      child: Text(
        'Lets know You a bit better',
        style: white30Heading,
      ),
    );
  }
}
