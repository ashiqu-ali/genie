import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Colors
Color background = const Color(0xFFF9F7F3);
Color primary1 = const Color(0xFF7f30fe);
Color primary2 =const Color(0xFF6380fb);
Color white = const Color(0xFFFFFFFF);

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

//sizes
double xsmall = 10.0;
double small = 15.0;
double medium = 20.0;
double large = 30.0;