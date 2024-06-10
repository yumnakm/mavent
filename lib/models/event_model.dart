//ini buat event model tpi ini masi coba2 jangan diotak atik dulu

class Event {
  final String title;
  final String genre;
  final DateTime date;
  final bool isTopEvent;

  Event({
    required this.title,
    required this.genre,
    required this.date,
    required this.isTopEvent,
  });
}
