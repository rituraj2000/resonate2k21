import 'package:flutter/material.dart';
import 'package:mentprism/const.dart';

class BackButtonRound extends StatelessWidget {
  const BackButtonRound({
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
