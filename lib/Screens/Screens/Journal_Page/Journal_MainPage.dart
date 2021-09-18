import 'package:flutter/material.dart';
import 'package:mentprism/const.dart';
import 'write_Journal.dart';

class Journal_Main extends StatelessWidget {
  const Journal_Main({
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
              TopText(),
              SizedBox(
                height: 50,
              ),
              Heading2_Text(),
              SizedBox(
                height: 20,
              ),
              Journal_Type_List(),
              SizedBox(
                height: 30,
              ),
              Text(
                'My Diary',
                style: whitecolorLight20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Heading2_Text extends StatelessWidget {
  const Heading2_Text({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Select a type of Journal',
      style: whitecolorLight20,
    );
  }
}

class Journal_Type_List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProblemButton(
          name: 'Anxiety',
        ),
        ProblemButton(
          name: 'Gratitude',
        ),
        ProblemButton(
          name: 'Goal Setting',
        ),
        ProblemButton(
          name: 'Sleep',
        ),
      ],
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
        'Reflect on where You are',
        style: white30Heading,
      ),
    );
  }
}

//Buttons

class ProblemButton extends StatelessWidget {
  ProblemButton({this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return WriteJournal(name);
          }),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        height: 50,
        width: double.infinity,
        decoration: ButtonDecoration,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name,
                style: whitecolorBold14,
              ),
              Icon(
                Icons.chevron_right,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Local Decorations

BoxDecoration TextBoxDecoration = BoxDecoration(
    color: secondaryBlue,
    borderRadius: BorderRadius.all(Radius.circular(15)),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.3),
        offset: Offset(-4, 5),
      ),
    ]);
BoxDecoration ButtonDecoration = BoxDecoration(
  color: secondaryBlue,
  borderRadius: BorderRadius.all(Radius.circular(15)),
);

//WillPop
// WillPopScope(
// onWillPop: () async => false,
// child: Journal_Main()
// )
