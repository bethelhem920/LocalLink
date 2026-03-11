import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:local_event_viewer/Provider/event_provider.dart';
import 'package:local_event_viewer/Widget/event_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String appName = "LocalLink";

  @override
  Widget build(BuildContext context) {
    // if (kDebugMode) {
    //   print(MockEvents().mockEvents);
    // }
    final eventProvider = Provider.of<EventProvider>(context);
    final events = eventProvider.events;
    Intl.defaultLocale = 'pt_EN';

    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0,
          title: Center(
            child: Text(appName),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.notifications,
                size: 30,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Welcome,'),
              const Text(
                'Discover amazing events',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Fig',
                ),
              ),
              const Divider(),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    final event = events[index];
                    return EventCard(
                        iD: event.eventID,
                        name: event.eventName,
                        description: event.eventDescription,
                        location: event.eventLocation,
                        image: event.imageURL,
                        date: event.time);
                  },
                  itemCount: events.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
