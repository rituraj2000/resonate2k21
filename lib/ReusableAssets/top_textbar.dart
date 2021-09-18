import 'package:flutter/material.dart';
import 'package:mentprism/const.dart';

class Top_Text_Bar extends StatelessWidget {
  const Top_Text_Bar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: secondaryBlue,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(40),
        ),
      ),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          'Diary',
          style: white50Heading,
        ),
      ),
    );
  }
}
