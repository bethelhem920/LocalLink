// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:local_event_viewer/Models/event_model.dart';
import 'package:local_event_viewer/Provider/event_provider.dart';
import 'package:provider/provider.dart';

class EventDetail extends StatefulWidget {
  final String Id;
  const EventDetail({super.key, required this.Id});

  @override
  State<EventDetail> createState() => EventDetailState();
}

class EventDetailState extends State<EventDetail> {
  @override
  Widget build(BuildContext context) {
    var events = Provider.of<EventProvider>(context).getById(widget.Id);
    var mediaSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: mediaSize.height / 2,
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(events.imageURL))),
            )
          ],
        ),
      ),
    );
  }
}
