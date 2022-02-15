import 'package:flutter/cupertino.dart';

class PaymentModel {
  final String date;
  final String paymentStatus;
  final double amount;
  final Widget pay;

   PaymentModel({
    required this.date,
    required this.paymentStatus,
    required this.amount,
    required this.pay
  });

  PaymentModel copy({
    String? date,
    String? paymentStatus,
    double? amount,
    Widget? pay,
  }) =>
      PaymentModel(
        date: date ?? this.date,
        paymentStatus: paymentStatus ?? this.paymentStatus,
        amount: amount ?? this.amount,
        pay: pay?? this.pay
      );

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PaymentModel &&
          runtimeType == other.runtimeType &&
          date == other.date &&
          paymentStatus == other.paymentStatus &&
          amount == other.amount &&
          pay == other.pay;

  @override
  int get hashCode => date.hashCode ^ paymentStatus.hashCode ^ amount.hashCode ^ pay.hashCode;
}