import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color primaryColor = const Color(0xFFD6272C);
Color secondaryColor = const Color.fromARGB(255, 10, 13, 119);
Color tertiaryColor = const Color(0xFF1756cb);
Color quaternaryColor = const Color(0xFF1756cb);

Color whiteColor = const Color(0xFFFFFFFF);
Color greyColor = const Color(0xFFD9D9D9);
Color greenColor = const Color(0xFF5D9C59);

//BOLD
TextStyle boldText20 = GoogleFonts.poppins(fontSize: 25, fontWeight: bold);

// SEMIBOLD TEXT
TextStyle semiBoldText20 =
    GoogleFonts.poppins(fontSize: 20, fontWeight: semiBold);
TextStyle semiBoldText16 =
    GoogleFonts.poppins(fontSize: 16, fontWeight: semiBold);
TextStyle semiBoldText14 =
    GoogleFonts.poppins(fontSize: 14, fontWeight: semiBold);
TextStyle semiBoldText12 =
    GoogleFonts.poppins(fontSize: 12, fontWeight: semiBold);

// REGULAR TEXT
TextStyle regularText14 =
    GoogleFonts.poppins(fontSize: 14, fontWeight: regular);
TextStyle regularText12 =
    GoogleFonts.poppins(color: greyColor, fontSize: 12, fontWeight: regular);

// MEDIUM TEXT
TextStyle mediumText14 = GoogleFonts.poppins(fontSize: 14, fontWeight: medium);
TextStyle mediumText10 = GoogleFonts.poppins(fontSize: 10, fontWeight: medium);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
