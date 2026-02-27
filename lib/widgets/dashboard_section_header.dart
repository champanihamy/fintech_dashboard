import 'package:flutter/material.dart';

class DashboardSectionHeader extends StatelessWidget {
  final String title;
  final String? trailing;

  const DashboardSectionHeader({super.key, required this.title, this.trailing});

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        if (trailing != null)
          TextButton.icon(
            icon: Icon(Icons.add),
            style: TextButton.styleFrom(
              backgroundColor: colorTheme.surfaceContainer,
              foregroundColor: Colors.blue,
            ),
            onPressed: () {},
            label: Text(
              trailing!,
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
      ],
    );
  }
}
