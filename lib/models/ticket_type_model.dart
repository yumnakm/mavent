class TicketType {
  final String type;
  final String currency;
  final double minPrice;
  final double maxPrice;

  TicketType({
    required this.type,
    required this.currency,
    required this.minPrice,
    required this.maxPrice,
  });

  factory TicketType.fromJson(Map<String, dynamic> json) {
    return TicketType(
      type: json['type'] ?? '',
      currency: json['currency'] ?? '',
      minPrice: json['minPrice'] != null ? json['minPrice'].toDouble() : 0.0,
      maxPrice: json['maxPrice'] != null ? json['maxPrice'].toDouble() : 0.0,
    );
  }
}
