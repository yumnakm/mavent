import 'package:flutter/material.dart';
import 'package:mavent/models/event_model.dart';
import 'package:mavent/services/ticketmaster_service.dart';
import 'package:mavent/ui/widgets/card_event.dart';
import 'package:mavent/ui/widgets/custom_search.dart';
import 'package:mavent/ui/widgets/navigation_bar.dart';
import 'package:mavent/ui/pages/profile_page.dart';

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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0), // Tinggi AppBar disesuaikan
        child: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          flexibleSpace: Stack(
            fit: StackFit.expand,
            children: [
              Image.asset(
                'assets/images/appbar.png',
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.5),
                      Colors.transparent,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Hi, Mr. Alfred',
                          style: TextStyle(
                            fontFamily: 'Outfit',
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'Good Morning',
                          style: TextStyle(
                            fontFamily: 'Outfit',
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: SizedBox(
                        width: 80, // Atur lebar ikon
                        height: 80, // Atur tinggi ikon
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg',
                          ),
                        ),
                      ),
                      onPressed: _navigateToProfile,
                    ),
                  ],
                ),
              ),
            ],
          ),
          elevation: 0,
        ),
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
