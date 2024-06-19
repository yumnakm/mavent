// card_ticket.dart
import 'package:flutter/material.dart';
import 'package:mavent/models/ticket_model.dart'; // Sesuaikan path ini
import 'package:mavent/ui/pages/detail_ticket.dart'; // Sesuaikan path ini

class CardTicket extends StatelessWidget {
  final TicketModel ticket;

  const CardTicket({Key? key, required this.ticket}) : super(key: key);

  void _navigateToDetailPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailTicketPage(ticket: ticket),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _navigateToDetailPage(context),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Color(0x00E5E7EB),
              width: 1,
            ),
          ),
          child: Stack(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      ticket.imageUrl,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(12),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ticket.title,
                          style: TextStyle(
                            fontFamily: 'Outfit',
                            color: Color(0xFF15161E),
                            fontSize: 24,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'By ${ticket.promoter}',
                          style: TextStyle(
                            fontFamily: 'Outfit',
                            color: Color(0xFF606A85),
                            fontSize: 12,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Color(0xFF606A85),
                              size: 20,
                            ),
                            SizedBox(width: 4),
                            Text(
                              ticket.location,
                              style: TextStyle(
                                fontFamily: 'Outfit',
                                color: Color(0xFF606A85),
                                fontSize: 12,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.airplane_ticket,
                              color: Color(0xFF606A85),
                              size: 20,
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Tiket (${ticket.ticketCount})',
                              style: TextStyle(
                                fontFamily: 'Outfit',
                                color: Color(0xFF606A85),
                                fontSize: 12,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Icon(
                              Icons.access_time,
                              color: Color(0xFF606A85),
                              size: 20,
                            ),
                            SizedBox(width: 4),
                            Text(
                              ticket.time,
                              style: TextStyle(
                                fontFamily: 'Outfit',
                                color: Color(0xFF606A85),
                                fontSize: 12,
                                letterSpacing: 0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Berhasil',
                    style: TextStyle(
                      fontFamily: 'Outfit',
                      color: Color(0xFF606A85),
                      fontSize: 16,
                      letterSpacing: 0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
