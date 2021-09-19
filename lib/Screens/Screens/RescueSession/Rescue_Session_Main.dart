import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentprism/ReusableAssets/Day_number.dart';
import 'package:mentprism/const.dart';
import 'package:mentprism/Screens/Screens/RescueSession/Rescue_InitialText.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class Rescue_Session extends StatelessWidget {
  const Rescue_Session({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Emergency_Call(),
              TopText(),
              SizedBox(
                height: 50,
              ),
              Heading2_Text(title: 'What are You going through?'),
              Problem_Box(
                problem: 'Depression',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopText extends StatelessWidget {
  const TopText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      height: 200,
      width: double.infinity,
      decoration: TextBoxDecoration,
      child: Text(
        'Feel Better with a short Session',
        style: white30Heading,
      ),
    );
  }
}

class Heading2_Text extends StatelessWidget {
  Heading2_Text({this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: whitecolorLight20,
    );
  }
}

class Problem_Box extends StatelessWidget {
  Problem_Box({this.problem});

  final String problem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Rescue_Instructions();
        }));
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: EdgeInsets.all(20),
        height: 150,
        width: 150,
        decoration: SquareBoxDecoration,
        child: Center(
          child: Text(
            problem,
            style: whitecolorLight14,
          ),
        ),
      ),
    );
  }
}

/*
*
*
*
*
*
*
* */

/*
*
*
*
*
*
*
* */
//Buttons

class Emergency_Call extends StatelessWidget {
  const Emergency_Call({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: GestureDetector(
        onTap: () async {
          var number = '7735231989';
          await FlutterPhoneDirectCaller.callNumber(number);
        },
        child: Container(
          margin: EdgeInsets.only(bottom: 10),
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: yellowColor,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              'call',
              style: whitecolorLight14,
            ),
          ),
        ),
      ),
    );
  }
}
