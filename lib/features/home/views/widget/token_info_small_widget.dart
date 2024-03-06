import 'dart:ui';

import 'package:cardy_pay_mobile_application/common/extentions/text_extention.dart';
import 'package:cardy_pay_mobile_application/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SmallTokenWidget extends StatelessWidget {
  final Color? color;
  final String? price;
  final String? text;
  final double? width;
  const SmallTokenWidget({
    super.key,
    this.width,
    this.price = '0000.00',
    this.text = 'Bonus received',
    this.color = CColors.mainRed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? MediaQuery.of(context).size.width * 0.4,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        color: CColors.mainGrey,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.account_balance_wallet),
          const SizedBox(height: 25),
          (text)!.toText(
            fontWeight: FontWeight.w500,
            // fontWeight: FontWeight.bold,
          ),
          const SizedBox(
            height: 10,
          ),
          ('\$$price').toText(
            fontWeight: FontWeight.w700,
            // fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
