import 'package:flutter/material.dart';
import 'package:interview_test/utils.dart';

class CreditBalanceHeader extends StatelessWidget {
  final Color? textColor;
  final double creditBalance;

  const CreditBalanceHeader({
    super.key,
    required this.creditBalance,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text(
              "\$ ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
            ),
          ),
          Text(
            formatCredits(creditBalance),
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
