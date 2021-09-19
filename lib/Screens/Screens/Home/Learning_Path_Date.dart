import 'package:flutter/material.dart';
import 'package:mentprism/ReusableAssets/rounded_BackButton.dart';
import 'package:mentprism/Screens/Screens/Home/Learning_Path_Instructions.dart';
import 'package:mentprism/const.dart';

class Learning_Path_Date extends StatefulWidget {
  @override
  _Learning_Path_DateState createState() => _Learning_Path_DateState();
}

class _Learning_Path_DateState extends State<Learning_Path_Date> {
  int today = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: secondaryBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(40),
            bottomLeft: Radius.circular(55),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 10),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Progress',
                style: white30Heading,
              ),
            ),
          ),
        ),
        elevation: 0,
      ),
      backgroundColor: primaryBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Date_Card(
                  currentDate: 1,
                ),
                Date_Card(
                  currentDate: 2,
                ),
                Date_Card(
                  currentDate: 3,
                ),
                Date_Card(
                  currentDate: 4,
                ),
                Date_Card(
                  currentDate: 5,
                ),
                Date_Card(
                  currentDate: 6,
                ),
                Date_Card(
                  currentDate: 7,
                ),
              ],
            ),
          ),
          BackButtonRound(),
        ],
      ),
    );
  }
}

class Date_Card extends StatelessWidget {
  Date_Card({this.currentDate});

  final int currentDate;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: currentDate == 1
          ? () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Learning_Path_Instructions();
              }));
            }
          : () {},
      child: Container(
        height: currentDate != 1 ? 45 : 60,
        width: currentDate != 1 ? 45 : 60,
        color: currentDate != 1 ? secondaryBlue : yellowColor,
        margin: EdgeInsets.all(1),
        child: Center(
            child: Text(
          'Day $currentDate',
          style: currentDate != 1 ? whitecolorBold12 : bluecolorBold16,
        )),
      ),
    );
  }
}
