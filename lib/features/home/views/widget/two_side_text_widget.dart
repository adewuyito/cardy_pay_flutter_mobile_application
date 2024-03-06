
import 'package:cardy_pay_mobile_application/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWithEdit extends StatelessWidget {
  final String firstString;
  final String secondString;
  const TextWithEdit({
    super.key,
    required this.firstString,
    required this.secondString,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
      children: [
        TextSpan(
          text: firstString,
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(fontSize: 16, color: CColors.mainGrey),
          ),
        ),
        TextSpan(
          text: secondString,
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              fontSize: 16,
              color: CColors.mainBlack,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    ));
  }
}
