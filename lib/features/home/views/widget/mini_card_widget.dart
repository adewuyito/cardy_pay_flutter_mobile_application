import 'package:cardy_pay_mobile_application/common/extentions/text_extention.dart';
import 'package:cardy_pay_mobile_application/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SmallCardWidget extends StatelessWidget {
  final String? text;
  final String? subText;
  final VoidCallback? onTap;
  const SmallCardWidget({
    super.key,
    this.subText = '000.00',
    this.text = 'Position',
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: CColors.mainGrey,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              text!.toText(
                color: CColors.mainBlack,
                fontWeight: FontWeight.w300,
              ),
              const Icon(
                Icons.navigate_next_rounded,
                color: CColors.mainBlack,
              ),
            ],
          ),
          const SizedBox(height: 15),
          ('\$$subText').toText(
            color: CColors.mainBlack,
            fontSize: 18,
            // fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
