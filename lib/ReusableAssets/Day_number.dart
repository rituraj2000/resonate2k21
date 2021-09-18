import 'package:flutter/material.dart';
import 'package:mentprism/Screens/Screens/Journal_Page/write_Journal.dart';
import 'package:mentprism/Screens/Screens/RescueSession/Rescue_InitialText.dart';
import 'package:mentprism/const.dart';

import 'package:mentprism/ReusableAssets/rounded_BackButton.dart';

class Rescue_Calendar extends StatefulWidget {
  @override
  _Rescue_CalendarState createState() => _Rescue_CalendarState();
}

class _Rescue_CalendarState extends State<Rescue_Calendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBlue,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: secondaryBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(60),
            bottomLeft: Radius.circular(40),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Padding(
            padding: const EdgeInsets.only(left: 25, bottom: 10),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lets Deal with',
                    style: whitecolorBold14,
                  ),
                  Text(
                    'Depression',
                    style: white30Heading,
                  ),
                ],
              ),
            ),
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Day_Button(
                    day_num: 1,
                  ),
                  Day_Button(
                    day_num: 2,
                  ),
                  Day_Button(
                    day_num: 3,
                  ),
                  Day_Button(
                    day_num: 4,
                  ),
                  Day_Button(
                    day_num: 5,
                  ),
                  Day_Button(
                    day_num: 6,
                  ),
                  Day_Button(
                    day_num: 7,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Day_Button(
                    day_num: 1,
                  ),
                  Day_Button(
                    day_num: 2,
                  ),
                  Day_Button(
                    day_num: 3,
                  ),
                  Day_Button(
                    day_num: 4,
                  ),
                  Day_Button(
                    day_num: 5,
                  ),
                  Day_Button(
                    day_num: 6,
                  ),
                  Day_Button(
                    day_num: 7,
                  ),
                ],
              )
            ],
          ),
          BackButton(),
        ],
      ),
    );
  }
}

class Day_Button extends StatelessWidget {
  Day_Button({this.day_num});

  final int day_num;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Rescue_Instructions();
        }));
      },
      child: Container(
        margin: EdgeInsets.all(2.5),
        padding: EdgeInsets.all(5.5),
        decoration: Day_Button_Decoration,
        child: Center(
          child: Text(
            'Day $day_num',
            style: whitecolorBold12,
          ),
        ),
      ),
    );
  }
}

BoxDecoration Day_Button_Decoration = BoxDecoration(
  color: secondaryBlue,
);

//ButtonActivateIntent

class BackButton extends StatelessWidget {
  const BackButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Container(
        height: 80,
        width: 100,
        decoration: BoxDecoration(
          color: pinkColor,
          borderRadius: BorderRadius.only(topRight: Radius.circular(100)),
        ),
        child: Center(
          child: Text(
            'back',
            style: whitecolorLight20,
          ),
        ),
      ),
    );
  }
}
