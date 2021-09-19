import 'package:flutter/material.dart';
import 'package:mentprism/ReusableAssets/Progress_Bar.dart';
import 'package:mentprism/ReusableAssets/rounded_BackButton.dart';
import 'package:mentprism/Screens/Screens/Journal_Page/questions_Journal.dart';
import 'package:mentprism/const.dart';
import 'Resque_Quiz_Questions.dart';

class RescueQuiz extends StatefulWidget {
  @override
  _RescueQuizState createState() => _RescueQuizState();
}

class _RescueQuizState extends State<RescueQuiz> {
  Quiz quiz = Quiz();
  int current_index = 0;
  int net_Poit = 0;

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
                Quiz_Question(quiz: quiz),
                Answer_Button(
                  quiz: quiz,
                  option_number: 0,
                  ontap: () {
                    setState(() {
                      current_index++;
                    });
                  },
                ),
                Answer_Button(
                  quiz: quiz,
                  option_number: 1,
                ),
                Answer_Button(
                  quiz: quiz,
                  option_number: 2,
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

class Answer_Button extends StatelessWidget {
  Answer_Button({this.quiz, this.option_number, this.ontap});
  final Quiz quiz;
  final int option_number;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: secondaryBlue,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Text(
          quiz.quiz_Question[0].options[option_number].option,
          style: whitecolorBold14,
        ),
      ),
    );
  }
}

// Widgets

class Quiz_Question extends StatelessWidget {
  const Quiz_Question({
    Key key,
    @required this.quiz,
  }) : super(key: key);

  final Quiz quiz;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
      child: Text(
        quiz.quiz_Question[1].question,
        style: whitecolorLight20,
      ),
    );
  }
}

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
