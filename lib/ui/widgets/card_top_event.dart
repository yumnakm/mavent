// ini juga cuma nyoba buat card top event


import 'package:flutter/material.dart';
import 'package:mavent/models/event_model.dart';

class TopEventCard extends StatelessWidget {
  final Event event;

  TopEventCard({required this.event});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      child: ListTile(
        title: Text(event.title),
        subtitle: Text('${event.genre} - ${event.date.toLocal()}'),
      ),
    );
  }
}
