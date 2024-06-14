import 'package:flutter/material.dart';
import 'package:mavent/models/event_model.dart';
import 'package:mavent/app/resources/datautil.dart';

class DetailEventPage extends StatefulWidget {
  final EventModel event;

  const DetailEventPage({Key? key, required this.event})
      : super(key: key);

  @override
  _DetailEventPageState createState() => _DetailEventPageState();
}

class _DetailEventPageState extends State<DetailEventPage> {
  late EventModel _event;

  @override
  void initState() {
    super.initState();
    _event = widget.event;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar( // Sesuaikan dengan tema yang Anda inginkan
      forceMaterialTransparency: true,
      title: Text(_event.title,),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert_outlined),
            onPressed: () {
              // Implementasi aksi tambahan di sini
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  _event.image,
                  width: double.infinity,
                  height: 280,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _event.location,
                    style: TextStyle(
                      fontFamily: 'Plus Jakarta Sans',
                      letterSpacing: 0,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    _event.title,
                    style: TextStyle(
                      fontFamily: 'Plus Jakarta Sans',
                      letterSpacing: 0,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'By ',
                    style: TextStyle(
                      fontFamily: 'Plus Jakarta Sans',
                      letterSpacing: 0,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'About',
                    style: TextStyle(
                      fontFamily: 'Plus Jakarta Sans',
                      letterSpacing: 0,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    _event.description,
                    style: TextStyle(
                      fontFamily: 'Plus Jakarta Sans',
                      letterSpacing: 0,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Timeline Event',
                    style: TextStyle(
                      fontFamily: 'Plus Jakarta Sans',
                      letterSpacing: 0,
                    ),
                  ),
                  SizedBox(height: 8),
                  _buildTimelineEvent('Opening Event', DateUtil.formatDate(_event.date)),
                  SizedBox(height: 8),
                  _buildTimelineEvent('Location', _event.location),
                  SizedBox(height: 16),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your Total',
                        style: TextStyle(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0,
                        ),
                      ),
                      Text(
                        'Rp', // Sesuaikan dengan harga tiket
                        style: TextStyle(
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi ketika tombol Book Now ditekan
                      print('Book Now pressed');
                    },
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                      child: Text(
                        'Book Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Plus Jakarta Sans',
                          letterSpacing: 0,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF4B39EF),
                      minimumSize: Size(double.infinity,
                          44), // Sesuaikan dengan warna tema yang Anda inginkan
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTimelineEvent(String label, String value) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontFamily: 'Plus Jakarta Sans',
              letterSpacing: 0,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontFamily: 'Plus Jakarta Sans',
              letterSpacing: 0,
            ),
          ),
        ],
      ),
    );
  }
}
