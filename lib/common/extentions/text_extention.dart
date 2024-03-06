import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension ToTextWidget on String {
  Widget toText({
    double? fontSize,
    Color? color,
    FontWeight? fontWeight,
    bool baseline = false,
  }) {
    if (baseline) {
      return Text(
        this,
        style: GoogleFonts.poppins(
          textBaseline: TextBaseline.alphabetic,
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ),
      );
    } else {
      return Text(
        this,
        style: GoogleFonts.poppins(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ),
      );
    }
  }
}
