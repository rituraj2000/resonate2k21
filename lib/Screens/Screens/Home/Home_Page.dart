import 'package:flutter/material.dart';
import 'package:mentprism/Screens/Screens/Home/Learning_Path_Date.dart';
import 'package:mentprism/const.dart';

class Home_Page extends StatefulWidget {
  @override
  _Home_PageState createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  bool isEmojiSelected = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            User_Box(),
            isEmojiSelected
                ? Container(
                    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: TextBoxDecorationYellow,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Emoji_Button(
                          ontap: () {
                            setState(() {
                              isEmojiSelected = false;
                            });
                          },
                          emoji: 'happy',
                        ),
                        Emoji_Button(
                          ontap: () {
                            setState(() {
                              isEmojiSelected = false;
                            });
                          },
                          emoji: 'happy_2',
                        ),
                        Emoji_Button(
                          ontap: () {
                            setState(() {
                              isEmojiSelected = false;
                            });
                          },
                          emoji: 'ok',
                        ),
                        Emoji_Button(
                          ontap: () {
                            setState(() {
                              isEmojiSelected = false;
                            });
                          },
                          emoji: 'sad',
                        ),
                        Emoji_Button(
                          ontap: () {
                            setState(() {
                              isEmojiSelected = false;
                            });
                          },
                          emoji: 'bad',
                        ),
                      ],
                    ),
                  )
                : SizedBox(),
            Heading_20_white(),
            Learning_Path(
              learningpath: 'Time Management',
              ontap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Learning_Path_Date();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Learning_Path extends StatelessWidget {
  Learning_Path({this.learningpath, this.ontap});

  final String learningpath;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        height: 220,
        width: 170,
        decoration: SquareBoxDecoration,
        child: Center(
          child: Text(
            learningpath,
            style: whitecolorBold14,
          ),
        ),
      ),
    );
  }
}

class Heading_20_white extends StatelessWidget {
  const Heading_20_white({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Text(
        'Select a Learning Path',
        style: whitecolorBold20,
      ),
    );
  }
}

class Emoji_Button extends StatelessWidget {
  Emoji_Button({this.ontap, this.emoji});

  final Function ontap;
  final String emoji;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: CircleAvatar(
        backgroundColor: secondaryBlue,
        radius: 30,
        child: Image(
          image: AssetImage('assets/images/emojis/$emoji.png'),
        ),
      ),
    );
  }
}

class User_Box extends StatelessWidget {
  const User_Box({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      height: 180,
      width: double.infinity,
      decoration: TextBoxDecoration,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hi there!',
                style: white30Heading,
              ),
              Text(
                'Rituraj',
                style: white45Heading,
              ),
            ],
          ),
          CircleAvatar(
            radius: 60,
            backgroundColor: yellowColor,
            child: Image(
              image: AssetImage('assets/images/user_pic.png'),
            ),
          )
        ],
      ),
    );
  }
}
