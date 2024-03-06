import 'package:flutter/material.dart';
import 'package:cardy_pay_mobile_application/common/extentions/text_extention.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/helpers/helper_function.dart';

class AccountBalanceText extends StatelessWidget {
  final String balanceText;
  const AccountBalanceText({super.key, required this.balanceText});

  @override
  Widget build(BuildContext context) {
    final isDark = CHelperFunctions.isDarkMode(context);
    final color = isDark ? CColors.mainBlack : CColors.mainWhite;
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        "\$".toText(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: color,
        ),
        balanceText.toText(
          baseline: false,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: color,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: 'Balance'.toText(color: CColors.mainGrey, fontSize: 11),
        ),
      ],
    );
  }
}
