import 'package:flutter/material.dart';
import 'package:mavent/models/event_model.dart';
import 'package:mavent/services/ticketmaster_service.dart';
import 'package:mavent/ui/widgets/card_event.dart';
import 'package:mavent/ui/widgets/custom_search.dart';
import 'package:mavent/ui/widgets/navigation_bar.dart';
import 'package:mavent/ui/pages/profile_page.dart';
import 'package:mavent/ui/widgets/custom_button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String searchQuery = '';
  final TextEditingController _searchController = TextEditingController();
  Future<List<EventModel>>? _futureEvents;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_updateSearchQuery);
    _futureEvents = _fetchEvents('');
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _updateSearchQuery() {
    final newQuery = _searchController.text;
    setState(() {
      searchQuery = newQuery;
      _futureEvents = _fetchEvents(newQuery);
    });
  }

  Future<List<EventModel>> _fetchEvents(String query) async {
    try {
      return await ApiService().fetchEvents(query);
    } catch (e) {
      print('Error fetching events: $e');
      return [];
    }
  }

  void _navigateToProfile() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfilePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        forceMaterialTransparency: true,
        actions: [
          CircleButton(
            imageUrl:
                'https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg', // Ganti dengan URL gambar profil Anda
            onPressed: _navigateToProfile,
          ),
        ],
      ),
      body: Column(
        children: [
          CustomSearch(searchController: _searchController),
          Expanded(
            child: FutureBuilder<List<EventModel>>(
              future: _futureEvents,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Center(child: Text('No events found'));
                }

                final events = snapshot.data!;
                return ListView.builder(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 8.0),
                  itemCount: events.length,
                  itemBuilder: (context, index) {
                    final event = events[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: CardEvent(event: event),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomNavbar(currentIndex: 0),
    );
  }
}
