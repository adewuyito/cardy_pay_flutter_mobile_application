import 'package:flutter/foundation.dart';

@immutable
class CardsModel {
  final UserId userId;
  final CardId carduid;
  final String cardHolderName;
  final String cardNumber;
  final String cardType;

  CardsModel({
    required this.userId,
    required Map<String, dynamic> data,
  })  : carduid = data[CardFields.carduid],
        cardHolderName = data[CardFields.cardHolderName],
        cardNumber = data[CardFields.cardNumber],
        cardType = data[CardFields.cardType];
}

typedef CardId = String;
typedef UserId = String;

class CardFields {
  static CardId carduid = "card_uid";
  static String cardHolderName = "card_holder_name";
  static String cardNumber = "card_number";
  static String cardType = "card_type";

  CardFields._();
}
