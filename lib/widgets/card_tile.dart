import 'package:flutter/material.dart';

class CardTile extends StatelessWidget {
  final String label;
  final String amount;
  final Function() onTap;

  const CardTile({
    super.key,
    required this.label,
    required this.amount,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey[200]!),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Icon(Icons.credit_card, color: Colors.blueAccent),
            SizedBox(width: 15),
            Text(label, style: TextStyle(fontWeight: FontWeight.w500)),
            SizedBox(width: 90),
            Expanded(
              child: Text(
                amount,
                style: TextStyle(fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.clip,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
