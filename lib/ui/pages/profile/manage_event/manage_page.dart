import 'package:flutter/material.dart';
import 'package:mavent/models/event_model.dart';
import 'package:mavent/ui/pages/profile/manage_event/edit_event_page.dart';
import 'package:mavent/ui/widgets/card_manage.dart';

class ManagePage extends StatefulWidget {
  const ManagePage({Key? key}) : super(key: key);

  @override
  _ManagePageState createState() => _ManagePageState();
}

class _ManagePageState extends State<ManagePage> {
  List<EventModel> events = [
    EventModel(
      id: '1',
      title: 'Event 1',
      promoter: 'Promoter 1',
      date: '',
      location: 'Location 1',
      image: 'https://picsum.photos/seed/1/200/200',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu libero et urna hendrerit hendrerit ac a lorem. Vivamus vehicula enim quis justo consectetur, sit amet fermentum quam consectetur.',
      country: 'Country 1',
      price: 100.0,
      city: '',
    ),
    EventModel(
      id: '2',
      title: 'Event 2',
      promoter: 'Promoter 2',
      date: '',
      location: 'Location 2',
      image: 'https://picsum.photos/seed/2/200/200',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu libero et urna hendrerit hendrerit ac a lorem.',
      country: 'Country 2',
      price: 150.0,
      city: '',
    ),
    EventModel(
      id: '3',
      title: 'Event 3',
      promoter: 'Promoter 3',
      date: '',
      location: 'Location 3',
      image: 'https://picsum.photos/seed/3/200/200',
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris eu libero et urna hendrerit hendrerit ac a lorem. Vivamus vehicula enim quis justo consectetur, sit amet fermentum quam consectetur.',
      country: 'Country 3',
      price: 120.0,
      city: '',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Events'),
      ),
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (context, index) {
          return CardManage(
            event: events[index],
            onDeletePressed: () {
              setState(() {
                events.removeAt(index);
              });
            },
            onEditPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => EditEventPage(event: events[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
