import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mentprism/Screens/Screens//Journal_Page/write_Journal.dart';
import 'package:mentprism/Screens/Screens/Journal_Page/Journal_MainPage.dart';
import 'package:mentprism/Screens/Screens/RescueSession/Rescue_Session_Main.dart';
import 'package:mentprism/const.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentindex = 0;

  final List screens = [Home_Page(), Journal_Main(), Rescue_Session()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBlue,
      body: screens[currentindex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: BottomNavigationBar(
              backgroundColor: pinkColor,
              currentIndex: currentindex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.pencilAlt),
                  label: 'Your Profile',
                  backgroundColor: secondaryBlue,
                ),
                BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.pencilAlt),
                  label: 'Journal',
                  backgroundColor: secondaryBlue,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.accessibility_new_outlined),
                  label: 'Rescue Session',
                  backgroundColor: secondaryBlue,
                ),
              ],
              onTap: (index) {
                setState(() {
                  currentindex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

class Home_Page extends StatelessWidget {
  const Home_Page({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          child: Text('Home'),
        ),
      ),
    );
  }
}
