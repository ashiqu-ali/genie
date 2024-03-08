import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Colors
Color background = const Color(0xFFF9F7F3);
Color primary1 = const Color(0xFF7f30fe);
Color primary2 =const Color(0xFF6380fb);
Color white = const Color(0xFFFFFFFF);
Color userChat = const Color(0xFF1A80E5);
Color resChat = const Color(0xFF243647);
Color hintColor = const Color(0xFF47698A);


//TextStyle
TextStyle heading1 = GoogleFonts.poppins(
    color: white,
    fontSize: 24,
    fontWeight: FontWeight.bold
);
TextStyle heading2 = GoogleFonts.poppins(
    color: white,
    fontSize: 18,
    fontWeight: FontWeight.w500
);
TextStyle heading3 = GoogleFonts.poppins(
    color: Colors.blue,
    fontSize: 17.5
);
TextStyle button = GoogleFonts.poppins(
    color: white,
    fontSize: 18,
    fontStyle: FontStyle.normal
);
TextStyle userText = GoogleFonts.poppins(
    color: Colors.black,
    fontSize: medium,
    fontWeight: FontWeight.w500
);
TextStyle chatStyle = GoogleFonts.poppins(
    color: Colors.black45,
    fontSize: small,
    fontWeight: FontWeight.w500
);
TextStyle messageText = GoogleFonts.poppins(color: white, fontSize: small);
TextStyle dateText = GoogleFonts.poppins(color: white, fontSize: 13);
TextStyle hintText = GoogleFonts.poppins(color: hintColor, fontSize: small);

//sizes
const double xsmall = 10.0;
const double small = 15.0;
const double medium = 20.0;
const double large = 30.0;
const double xlarge = 50.0;