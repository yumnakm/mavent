// detail_ticket.dart
import 'package:flutter/material.dart';
import 'package:mavent/models/ticket_model.dart'; // Sesuaikan path ini

class DetailTicketPage extends StatelessWidget {
  final TicketModel ticket;

  const DetailTicketPage({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ticket.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(ticket.imageUrl),
            SizedBox(height: 16.0),
            Text(
              ticket.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text('By ${ticket.promoter}'),
            SizedBox(height: 8.0),
            Row(
              children: [
                Icon(Icons.location_on, color: Colors.grey),
                SizedBox(width: 4.0),
                Text(ticket.location),
              ],
            ),
            SizedBox(height: 8.0),
            Row(
              children: [
                Icon(Icons.access_time, color: Colors.grey),
                SizedBox(width: 4.0),
                Text(ticket.time),
              ],
            ),
            SizedBox(height: 8.0),
            Text('Tickets available: ${ticket.ticketCount}'),
            // Tambahkan detail lainnya jika diperlukan
          ],
        ),
      ),
    );
  }
}
