import 'package:cardy_pay_mobile_application/features/cards/views/widget/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../utils/constants/colors.dart';
import '../../cards/models/card_model.dart';

class ReportView extends ConsumerWidget {
  const ReportView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: CardWidget(userCard: tokenCard),
    );
  }
}

final tokenCard = CardsModel(userId: 'uuis29182', data: data);

final data = {
  CardFields.carduid: "my-card",
  CardFields.cardHolderName: "Timothy Adewuyi",
  CardFields.cardNumber: "99803988988872028",
  CardFields.cardType: "Mastercard",
};
