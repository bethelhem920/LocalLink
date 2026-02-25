import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:local_event_viewer/Data/mock_events.dart';
import 'package:local_event_viewer/Widget/event_card.dart';

class SpalshScreen extends StatelessWidget {
  SpalshScreen({super.key});
  String appName = "LocalLink";
  final data = MockEvents().mockEvents;
  @override
  Widget build(BuildContext context) {
    // if (kDebugMode) {
    //   print(MockEvents().mockEvents);
    // }
    return Scaffold(
      appBar: AppBar(
        title: Text(appName),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final event = data[index];
          return EventCard(
              iD: event.eventID,
              name: event.eventName,
              description: event.eventDescription,
              location: event.eventLocation,
              image: event.imageURL,
              date: event.time.toString());
        },
        itemCount: data.length,
      ),
    );
  }
}
