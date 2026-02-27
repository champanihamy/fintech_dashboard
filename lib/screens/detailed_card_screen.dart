import 'package:flutter/material.dart';
import 'package:interview_test/models/credit_card.dart';
import 'package:interview_test/widgets/bank_card.dart';
import 'package:interview_test/widgets/card_operation.dart';
import 'package:interview_test/widgets/credit_balance_header.dart';

class DetailedCardScreen extends StatelessWidget {
  static const String pageId = "/detailed-card";
  final CreditCard creditCard;

  const DetailedCardScreen({super.key, required this.creditCard});

  @override
  Widget build(BuildContext context) {
    final colorTheme = Theme.of(context).colorScheme;
    return DefaultTabController(
      length: 2, // Operations and History
      child: Scaffold(
        backgroundColor: colorTheme.surface,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text("Card", style: TextStyle(color: Colors.black)),
          actions: [
            IconButton(
              icon: Icon(Icons.more_vert, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            CreditBalanceHeader(creditBalance: creditCard.balance),
            BankCard(card: creditCard),
            SizedBox(height: 20),
            _buildTabBar(),
            Expanded(
              child: TabBarView(
                children: [
                  _buildOperationsList(),
                  Center(child: Text("History Content")),
                  // Placeholder for History tab
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    return TabBar(
      indicatorColor: Colors.blueAccent,
      labelColor: Colors.blueAccent,
      unselectedLabelColor: Colors.blueGrey,
      labelStyle: TextStyle(fontWeight: FontWeight.bold),
      tabs: [
        Tab(text: "Operations"),
        Tab(text: "History"),
      ],
    );
  }

  Widget _buildOperationsList() {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        CardOperation(icon: Icons.credit_card, title: "Top up card"),
        CardOperation(icon: Icons.account_balance_wallet, title: "Payments"),
        CardOperation(icon: Icons.arrow_forward, title: "Card output"),
        CardOperation(
          icon: Icons.credit_card_rounded,
          title: "Take all the money from the card",
        ),
      ],
    );
  }
}
