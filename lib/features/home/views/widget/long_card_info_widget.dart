import 'package:cardy_pay_mobile_application/common/extentions/text_extention.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';

class LongCardWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final double? percentageIndex;
  const LongCardWidget({
    super.key,
    this.percentageIndex = 1,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      height: height,
      width: width ?? MediaQuery.of(context).size.width * 0.4,
      decoration: BoxDecoration(
        color: CColors.mainBlack,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            height: 20,
          ),
          Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                child: SizedBox.square(
                  dimension: 90,
                  child: CircularProgressIndicator(
                    color: CColors.mainRed,
                    strokeCap: StrokeCap.round,
                    strokeWidth: 10,
                    backgroundColor: CColors.mainGrey.withAlpha(100),
                    value: percentageIndex,
                  ),
                ),
              ),
              Positioned(
                child: "${(percentageIndex! * 100).toInt().toString()}%"
                    .toText(fontSize: 25, fontWeight: FontWeight.w500),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          "Tokens To Buy".toText(
            color: CColors.mainGrey,
            fontWeight: FontWeight.w500,
          ),
          "For 33%".toText(
            color: CColors.mainGrey,
            fontWeight: FontWeight.w500,
          ),
          const SizedBox(height: 20),
          "8900TB".toText(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: CColors.mainRed,
          ),
        ],
      ),
    );
  }
}
