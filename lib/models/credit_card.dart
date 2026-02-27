class CreditCard {
  final String name;
  final String cardNumber;
  final double balance;
  final String currency;
  final String expiryDate;

  const CreditCard({
    required this.name,
    required this.cardNumber,
    required this.balance,
    required this.expiryDate,
    required this.currency,
  });
}
