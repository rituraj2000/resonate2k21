import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Colors

Color primaryBlue = Color(0xFF1E2378);
Color secondaryBlue = Color(0xFF372F97);
Color pinkColor = Color(0xFFD684F0);
Color yellowColor = Color(0xFFFBE185);

// TextStyles

TextStyle white50Heading = TextStyle(
  fontFamily: 'Poppins',
  color: Colors.white,
  fontSize: 50,
  fontWeight: FontWeight.w700,
);
TextStyle white30Heading = TextStyle(
  fontFamily: 'Poppins',
  color: Colors.white,
  fontSize: 30,
  fontWeight: FontWeight.w700,
);
TextStyle white45Heading = TextStyle(
  fontFamily: 'Poppins',
  color: Colors.white,
  fontSize: 45,
  fontWeight: FontWeight.w700,
);
TextStyle white30HeadingLight = TextStyle(
  fontFamily: 'Poppins',
  color: Colors.white,
  fontSize: 30,
  fontWeight: FontWeight.w200,
);
TextStyle whitecolorBold14 = TextStyle(
  fontFamily: 'Poppins',
  color: Colors.white,
  fontSize: 14,
  fontWeight: FontWeight.w700,
);
TextStyle whitecolorBold12 = TextStyle(
  fontFamily: 'Poppins',
  color: Colors.white,
  fontSize: 12,
  fontWeight: FontWeight.w700,
);
TextStyle bluecolorBold16 = TextStyle(
  fontFamily: 'Poppins',
  color: primaryBlue,
  fontSize: 16,
  fontWeight: FontWeight.w700,
);
TextStyle whitecolorLight14 = TextStyle(
  fontFamily: 'Poppins',
  color: Colors.white,
  fontSize: 14,
  fontWeight: FontWeight.w200,
);
TextStyle whitecolorBold20 = TextStyle(
  fontFamily: 'Poppins',
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.w200,
);
TextStyle whitecolorLight20 = TextStyle(
  fontFamily: 'Poppins',
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.w700,
);

//**
//
//
//
// /

BoxDecoration TextBoxDecoration = BoxDecoration(
    color: secondaryBlue,
    borderRadius: BorderRadius.all(Radius.circular(15)),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.3),
        offset: Offset(-4, 5),
      ),
    ]);
BoxDecoration TextBoxDecorationYellow = BoxDecoration(
  color: secondaryBlue,
  borderRadius: BorderRadius.all(Radius.circular(60)),
);

BoxDecoration SquareBoxDecoration = BoxDecoration(
  color: secondaryBlue,
  borderRadius: BorderRadius.all(Radius.circular(20)),
);
