import 'package:flutter/material.dart';
import 'package:mentprism/const.dart';

class Progress_Tab extends StatelessWidget {
  const Progress_Tab({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0.5, 10, 0.5, 0.5),
      color: secondaryBlue,
      height: 5,
      width: 380,
    );
  }
}
