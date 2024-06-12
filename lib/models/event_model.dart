// lib/models/event_model.dart
class EventModel {
  String id;
  String title;
  String description;
  String date;
  String image;
  String location;

  EventModel({
    required this.id,
    required this.title,
    required this.description,
    required this.date,
    required this.image,
    required this.location,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) {
    return EventModel(
      id: json['id'],
      title: json['name'],
      description: json['info'] ?? '',
      date: json['dates']['start']['localDate'],
      image: json['images'][0]['url'],
      location: json['_embedded']['venues'][0]['name'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
        'date': date,
        'image': image,
        'location': location,
      };
}
