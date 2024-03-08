import 'package:cardy_pay_mobile_application/common/extentions/text_extention.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../utils/constants/colors.dart';
import '../../models/card_model.dart';

class CardWidget extends StatelessWidget {
  final CardsModel userCard;
  final Color cardColor;
  final String cardType;
  const CardWidget({
    super.key,
    this.cardColor = CColors.mainBlack,
    this.cardType = "Mastercard",
    required this.userCard,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: cardColor),
      child: Column(
        children: [
          // Icon and card number
          const Row(
            children: [
              FaIcon(
                FontAwesomeIcons.creditCard,
              )
            ],
          ),
          Row(
            children: [
              userCard.cardType.toText(color: CColors.mainWhite),
              const FaIcon(
                FontAwesomeIcons.creditCard,
              )
            ],
          ),
        ],
      ),
    );
  }
}
