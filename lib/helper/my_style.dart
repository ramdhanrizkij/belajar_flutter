import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:happy_store/helper/my_color.dart';

class MyStyle {
  static TextStyle labelFormText = GoogleFonts.poppins(
      color: MyColor.primaryTextColor,
      fontSize: 16,
      fontWeight: FontWeight.w400);

  static TextStyle titleText = GoogleFonts.poppins(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: MyColor.primaryTextColor);


  static TextStyle appBarTitle = GoogleFonts.poppins(
    fontSize:22,
    fontWeight: FontWeight.w400,
    color: const Color(0xFF191919),
  );

  static TextStyle profileMenuText = GoogleFonts.poppins(
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: const Color(0xFF032630),
  );

  static TextStyle subTitleText =
      GoogleFonts.poppins(fontSize: 14, color: MyColor.secondaryTextColor);
}
