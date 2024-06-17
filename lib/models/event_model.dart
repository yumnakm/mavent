class EventModel {
  String id;
  String title;
  String promoter;
  String description;
  String date;
  String image;
  String location;
  String city;
  String country;
  double price;

  EventModel({
    required this.id,
    required this.title,
    required this.promoter,
    required this.description,
    required this.date,
    required this.image,
    required this.location,
    required this.city,
    required this.country,
    required this.price,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) {
    return EventModel(
      id: json['id'] ?? '',
      title: json['name'] ?? '',
      promoter: json['promoter']?['name'] ?? '',
      description: json['_embedded']['venues']?[0]['generalInfo']
              ?['generalRule'] ??
          'Details are currently unavailable. Please check back later.',
      date: json['dates']['start']['localDate'] ?? '',
      image: json['images']?[0]?['url'] ?? '',
      location: json['_embedded']['venues']?[0]['name'] ?? 'Unknown Location',
      city: json['_embedded']['venues']?[0]['city']?['name'] ?? 'Unknown city',
      country: json['_embedded']['venues']?[0]['country']?['name'] ??
          'Unknown Country',
      price: (json['priceRanges']?[0]['min'] ?? 50).toDouble(),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'promoter': promoter,
        'description': description,
        'date': date,
        'image': image,
        'location': location,
        'city': city,
        'country': country,
        'price': price,
      };
}
