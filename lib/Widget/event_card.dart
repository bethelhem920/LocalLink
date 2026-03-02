//a custom widget to display event
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EventCard extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final iD;
  // ignore: prefer_typing_uninitialized_variables
  final name;
  // ignore: prefer_typing_uninitialized_variables
  final description;
  // ignore: prefer_typing_uninitialized_variables
  final location;
  // ignore: prefer_typing_uninitialized_variables
  final DateTime date;
  // ignore: prefer_typing_uninitialized_variables
  final image;

  const EventCard(
      {super.key,
      required this.iD,
      required this.name,
      required this.description,
      required this.location,
      required this.image,
      required this.date});

  @override
  Widget build(BuildContext context) {
    Intl.defaultLocale = 'pt_US';
    var size = MediaQuery.of(context).size;
    // DateTime dateTime = DateTime.parse(date.toString());
    // print(dateTime);
    var formattedDate =
        "${DateFormat.EEEE('en_US').format(date)}, ${DateFormat.MMMM('en_US').format(date)} ${DateFormat.d('en_US').format(date)} ,${DateFormat.y('en_US').format(date)}";
    var formattedTime = DateFormat('hh:mm a').format(date);
    return Container(
      margin: EdgeInsets.all(5),
      decoration: const BoxDecoration(
          borderRadius: BorderRadiusDirectional.all(Radius.circular(50))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(image),
          Text(
            name,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          Text(
            description,
            overflow: TextOverflow.ellipsis,
          ),
          Wrap(children: [const Icon(Icons.location_pin), Text(location)]),

          Wrap(
              alignment: WrapAlignment.spaceBetween,
              spacing: MediaQuery.of(context).size.width /
                  5, // Minimum gap between items
              runSpacing: 12.0,
              children: [
                Wrap(children: [
                  const Icon(Icons.calendar_month_sharp),
                  Text(formattedDate)
                ]),
                Wrap(children: [
                  const Icon(Icons.lock_clock),
                  Text(formattedTime)
                ]),
              ]),
          // Row(
          //   children: [
          //     Flexible(
          //       child: Text(
          //         name,
          //         overflow: TextOverflow.ellipsis,
          //       ),
          //     ),
          //     Text(location),
          //   ],
          // ),
          // Row(
          //   children: [
          //     Flexible(
          //         child: Text(
          //       description,
          //       overflow: TextOverflow.ellipsis,
          //     )),
          //     Text(date)
          //   ],
          // )
        ],
      ),
    );
  }
}
