import 'package:flutter/material.dart';
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
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: AppBar(
          leading: Spacer(),
          title: Center(child: Text(appName)),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final event = events[index];
            return EventCard(
                iD: event.eventID,
                name: event.eventName,
                description: event.eventDescription,
                location: event.eventLocation,
                image: event.imageURL,
                date: event.time.toString());
          },
          itemCount: events.length,
        ),
      ),
    );
  }
}
