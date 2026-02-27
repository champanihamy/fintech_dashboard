import 'package:flutter/material.dart';
import 'package:interview_test/models/credit_card.dart';
import 'package:interview_test/screens/detailed_card_screen.dart';
import 'package:interview_test/screens/error_screen.dart';
import 'package:interview_test/screens/home_screen.dart';

class NavigationService {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case HomeScreen.pageId:
        return MaterialPageRoute(builder: (context) => HomeScreen());
      case DetailedCardScreen.pageId:
        return MaterialPageRoute(
          builder: (context) =>
              DetailedCardScreen(creditCard: args as CreditCard),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => ErrorScreen(error: "Invalid Route"),
        );
    }
  }
}
