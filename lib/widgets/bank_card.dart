import 'package:flutter/material.dart';
import 'package:interview_test/models/credit_card.dart';
import 'package:interview_test/utils.dart';

class BankCard extends StatelessWidget {
  final CreditCard card;

  const BankCard({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    return Container(
      width: double.infinity,
      height: 200,
      margin: EdgeInsets.symmetric(horizontal: 25),
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: colorTheme.primaryContainer,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.blueGrey.withAlpha(200),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),

      /// Credit Card Details
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.credit_card, color: Colors.white70, size: 30),
          Spacer(),
          Text(
            card.cardNumber,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              letterSpacing: 2,
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "VALID DATE",
                    style: TextStyle(color: Colors.white54, fontSize: 10),
                  ),
                  Text(
                    formatExpiryDate(card.expiryDate),
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.red.withAlpha(200),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(-12, 0),
                    child: Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.orange.withAlpha(200),
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
