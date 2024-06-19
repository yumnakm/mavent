// ticket_model.dart
class TicketModel {
  final String imageUrl;
  final String title;
  final String promoter;
  final String location;
  final String time;
  final int ticketCount;

  TicketModel({
    required this.imageUrl,
    required this.title,
    required this.promoter,
    required this.location,
    required this.time,
    required this.ticketCount,
  });
}
