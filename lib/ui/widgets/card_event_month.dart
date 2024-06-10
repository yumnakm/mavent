// lib/widgets/event_card.dart

//ini masih nyoba buat semua widget card except yang top event
import 'package:flutter/material.dart';
import 'package:mavent/models/event_model.dart';

class EventCard extends StatelessWidget {
  final Event event;

  EventCard({required this.event});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(event.title),
        subtitle: Text('${event.genre} - ${event.date.toLocal()}'),
      ),
    );
  }
}
