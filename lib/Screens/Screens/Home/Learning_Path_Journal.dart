import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mentprism/const.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'Learning_Path_Journal_Questions.dart';
import 'package:flutter/services.dart';

class Learning_Path_Journal extends StatefulWidget {
  @override
  _Learning_Path_JournalState createState() => _Learning_Path_JournalState();
}

class _Learning_Path_JournalState extends State<Learning_Path_Journal> {
  CarouselController buttonCarouselController = CarouselController();

  int inx = 1;

  void nextQuestion() {
    if (inx < 3) {
      setState(() {
        inx++;
      });
    }
  }

  Questions questions = Questions();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              padding: const EdgeInsets.only(left: 30),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Reflect',
                  style: white50Heading,
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
            SingleChildScrollView(
              child: TextBox(),
            ),
            BackButton(),
          ],
        ),
      ),
    );
  }

  Center TextBox() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(40, 50, 40, 30),
                child: Text(
                  questions.questions[inx],
                  style: whitecolorLight20,
                ),
              ),
              Column(
                children: <Widget>[
                  Container(
                    height: 400,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    decoration: BoxDecoration(
                      color: secondaryBlue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(30),
                            child: TextField(
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(300),
                              ],
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        Next_Button(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  GestureDetector Next_Button() {
    return GestureDetector(
      onTap: () => {
        nextQuestion(),
      },
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          height: 50,
          width: 70,
          decoration: BoxDecoration(
            color: pinkColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              bottomRight: Radius.circular(30),
            ),
          ),
          child: Center(
            child: Text(
              'next',
              style: whitecolorBold14,
            ),
          ),
        ),
      ),
    );
  }
}

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
