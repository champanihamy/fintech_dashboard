import 'package:flutter/material.dart';

import 'package:interview_test/data/credit_card_data.dart';
import 'package:interview_test/screens/detailed_card_screen.dart';
import 'package:interview_test/utils.dart' show formatCredits;
import 'package:interview_test/widgets/account_details_tile.dart';
import 'package:interview_test/widgets/card_tile.dart';
import 'package:interview_test/widgets/credit_balance_header.dart';
import 'package:interview_test/widgets/dashboard_section_header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: colorTheme.primaryContainer,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            _buildHeader(),
            _buildActionButtons(),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  color: colorTheme.surface,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DashboardSectionHeader(title: "Accounts"),
                      Card(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Column(
                            children: [
                              AccountDetailsTile(
                                icon: Icons.wallet,
                                text: "5723-3244-232-12333",
                              ),
                              AccountDetailsTile(
                                icon: Icons.euro,
                                text: "45950.50 EUR",
                              ),
                              AccountDetailsTile(
                                icon: Icons.currency_pound,
                                text: "25000.50 USD",
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 24),
                      DashboardSectionHeader(
                        title: "Cards",
                        trailing: "ADD CARD",
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: creditCardData.length,
                        itemBuilder: (context, index) => CardTile(
                          label: creditCardData[index].name,
                          amount:
                              '${formatCredits(creditCardData[index].balance)} ${creditCardData[index].currency}',
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailedCardScreen(
                                  creditCard: creditCardData[index],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildHeader() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                "https://avatars.githubusercontent.com/u/583231?v=4",
              ),
              radius: 20,
            ),
            Icon(Icons.search, color: Colors.white60, size: 32),
          ],
        ),
        SizedBox(height: 20),
        CreditBalanceHeader(creditBalance: 327237839, textColor: Colors.white),

        Text(
          "USD . Dollar",
          style: TextStyle(color: Colors.white70, fontSize: 14),
        ),
      ],
    ),
  );
}

Widget _buildActionButtons() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    child: Row(
      children: [
        Expanded(child: _actionButton("Add money")),
        SizedBox(width: 15),
        Expanded(child: _actionButton("Exchange")),
      ],
    ),
  );
}

Widget _actionButton(String label) {
  return ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white.withAlpha(40),
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
    child: Text(label, style: TextStyle(color: Colors.white)),
  );
}
