import 'package:flutter/material.dart';
import 'package:mavent/ui/widgets/navigation_bar.dart';

class TicketPage extends StatefulWidget {
  @override
  _TicketPageState createState() => _TicketPageState();
}

class _TicketPageState extends State<TicketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tickets'),
        ),
        backgroundColor: Colors.white,
      
      body:Center(
          child: Text('No tickets booked yet'),
        ),
      
      bottomNavigationBar: CustomNavbar(currentIndex: 1),
    );
  }
}
