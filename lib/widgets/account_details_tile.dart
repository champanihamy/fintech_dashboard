import 'package:flutter/material.dart';

class AccountDetailsTile extends StatelessWidget {
  final IconData icon;
  final String text;

  const AccountDetailsTile({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    return ListTile(
      title: Text(
        text,
        style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500),
      ),
      leading: Container(
        padding: EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          color: colorTheme.surfaceContainer,
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
        child: Icon(icon, color: Colors.blueAccent, size: 14),
      ),
    );
  }
}
