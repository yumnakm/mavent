// lib/services/event_service.dart
import 'package:mavent/models/event_model.dart';

//ini juga nyoba buat kategori kali ya ak tidak tahu masih coba2 
class EventService {
  List<Event> getEvents() {
    // Fetch or generate a list of events
    // For simplicity, we'll return a static list here
    return [
      Event(
          title: 'Music Concert',
          genre: 'Music',
          date: DateTime.now(),
          isTopEvent: true),
      Event(
          title: 'Art Exhibition',
          genre: 'Art',
          date: DateTime.now().add(Duration(days: 1)),
          isTopEvent: false),
      // Add more events here
    ];
  }

  List<Event> filterEventsByGenre(List<Event> events, String genre) {
    return events.where((event) => event.genre == genre).toList();
  }

  List<Event> filterEventsByDate(List<Event> events, DateTime date) {
    return events.where((event) => event.date == date).toList();
  }
}
