class EventModel {
  String eventID;
  String eventName;
  String eventDescription;
  String eventLocation;
  DateTime time;
  String imageURL;

  EventModel({
    required this.eventID,
    required this.eventName,
    required this.eventDescription,
    required this.eventLocation,
    required this.imageURL,
    required this.time,
  });

  // creates a single instance of the EventModel class
  // factory EventModel.faker() {
  //   return EventModel(
  //       eventID: faker.guid.guid(),
  //       eventName: faker.conference.name(),
  //       eventDescription: faker.company.name(),
  //       eventLocation: faker.geo.toString(),
  //       // pictures: faker.image.loremPicsum() as ImageProvider,
  //       time: faker.date.dateTime());
  // }
}
