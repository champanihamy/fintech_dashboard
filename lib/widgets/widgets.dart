import 'package:flutter/material.dart';

class AccountDataTile extends StatelessWidget {
  final double amount;
  final String currencyCode;
  final VoidCallback? onTap;

  const AccountDataTile({
    super.key,
    required this.amount,
    required this.currencyCode,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Currency Icon Container
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                '€',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(width: 12),
            // Amount and Currency Text
            Text(
              '${amount.toStringAsFixed(2).replaceAll('.', ',')} $currencyCode',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color(0xFF333333),
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
