import 'package:flutter/material.dart';
import 'package:local_event_viewer/Data/mock_events.dart';
import 'package:local_event_viewer/Models/event_model.dart';

class EventProvider with ChangeNotifier {
  // we create one list of data here for all screens rather than
  // calling mockEvents() class in every screen that needs the data.
  // _ means only this class can modify it.
  final _events = MockEvents().mockEvents;

  // This allows other part of the app to ONLY read _events which a list of
  // instance of eventmodel(list of events) through "events".

  // This is to cover the real data and not be override/overwritten(aka expose data safely)
  List<EventModel> get events => _events;

  //This is a method to look up events using an ID
  EventModel getById(String id) {
    return _events.firstWhere((eventId) => eventId.eventID == id);
  }
}
