// ticket_page.dart
import 'package:flutter/material.dart';
import 'package:mavent/models/ticket_model.dart'; // Sesuaikan path ini
import 'package:mavent/ui/widgets/ticket/card_ticket.dart'; // Sesuaikan path ini
import 'package:mavent/ui/widgets/navigation_bar.dart';

class TicketPage extends StatefulWidget {
  @override
  _TicketPageState createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  final List<TicketModel> tickets = [
    TicketModel(
      imageUrl: 'https://picsum.photos/seed/838/600',
      title: 'Concert Event 1',
      promoter: 'John Doe',
      location: 'New York',
      time: '8:00 PM',
      ticketCount: 100,
    ),
    TicketModel(
      imageUrl: 'https://picsum.photos/seed/839/600',
      title: 'Concert Event 2',
      promoter: 'Jane Smith',
      location: 'Los Angeles',
      time: '7:00 PM',
      ticketCount: 150,
    ),
    // Tambahkan tiket lainnya jika diperlukan
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text('Tickets'),
      ),
      backgroundColor: Colors.white,
      body: tickets.isNotEmpty
          ? ListView.builder(
              itemCount: tickets.length,
              itemBuilder: (context, index) {
                return CardTicket(ticket: tickets[index]);
              },
            )
          : Center(
              child: Text('No tickets booked yet'),
            ),
      bottomNavigationBar: CustomNavbar(currentIndex: 1),
    );
  }
}
