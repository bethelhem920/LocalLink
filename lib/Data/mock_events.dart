import 'package:local_event_viewer/Models/event_model.dart';

class MockEvents {
  final List<EventModel> mockEvents = [
    EventModel(
      eventID: '1',
      eventName: 'Community Coding Meetup',
      eventDescription:
          'Join local developers for a casual coding session. Share ideas, collaborate on projects, and network with fellow tech enthusiasts.',
      imageURL: 'https://images.unsplash.com/photo-1519389950473-47ba0277781c',
      eventLocation: 'Downtown Innovation Hub',
      time: DateTime(2025, 6, 12, 18, 30),
    ),
    EventModel(
      eventID: '2',
      eventName: 'Farmers Market Saturday',
      eventDescription:
          'Fresh organic produce, homemade goods, and live music from local artists. Perfect for families and food lovers.',
      imageURL: 'https://images.unsplash.com/photo-1506806732259-39c2d0268443',
      eventLocation: 'Central Park Plaza',
      time: DateTime(2025, 6, 14, 9, 0),
    ),
    EventModel(
      eventID: '3',
      eventName: 'Art & Coffee Night',
      eventDescription:
          'An evening of local art exhibitions paired with specialty coffee tasting. Meet artists and explore creative works.',
      imageURL: 'https://images.unsplash.com/photo-1500530855697-b586d89ba3ee',
      eventLocation: 'Roast & Gallery Cafe',
      time: DateTime(2025, 6, 15, 19, 0),
    ),
    EventModel(
      eventID: '4',
      eventName: 'Yoga in the Park',
      eventDescription:
          'Start your morning with a refreshing outdoor yoga session. Suitable for all levels. Bring your mat!',
      imageURL: 'https://images.unsplash.com/photo-1552196563-55cd4e45efb3',
      eventLocation: 'Riverside Green Park',
      time: DateTime(2025, 6, 16, 7, 30),
    ),
    EventModel(
      eventID: '5',
      eventName: 'Startup Networking Night',
      eventDescription:
          'Connect with entrepreneurs, investors, and innovators in your local startup ecosystem.',
      imageURL: 'https://images.unsplash.com/photo-1492724441997-5dc865305da7',
      eventLocation: 'City Business Center',
      time: DateTime(2025, 6, 18, 18, 0),
    ),
    EventModel(
      eventID: '6',
      eventName: 'Outdoor Movie Screening',
      eventDescription:
          'Enjoy a classic movie under the stars. Free popcorn for the first 50 attendees!',
      imageURL: 'https://images.unsplash.com/photo-1489599849927-2ee91cede3ba',
      eventLocation: 'Sunset Amphitheater',
      time: DateTime(2025, 6, 20, 20, 30),
    ),
    EventModel(
      eventID: '7',
      eventName: 'Local Book Club Meetup',
      eventDescription:
          'Discuss this month’s selected novel and share your thoughts with fellow readers.',
      imageURL: 'https://images.unsplash.com/photo-1512820790803-83ca734da794',
      eventLocation: 'Maple Street Library',
      time: DateTime(2025, 6, 22, 17, 0),
    ),
    EventModel(
      eventID: '8',
      eventName: 'Charity Fun Run',
      eventDescription:
          'Participate in a 5K charity run to support local community programs. All fitness levels welcome.',
      imageURL: 'https://images.unsplash.com/photo-1508609349937-5ec4ae374ebf',
      eventLocation: 'Lakeside Trail',
      time: DateTime(2025, 6, 25, 8, 0),
    ),
  ];
}
