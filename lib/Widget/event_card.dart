//a custom widget to display event
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:local_event_viewer/Widget/button.dart';
import 'package:local_event_viewer/screen/detail_page.dart';

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

  final TextStyle _textStyle = const TextStyle(
    fontFamily: 'Fig',
    fontWeight: FontWeight.w700,
  );

  @override
  Widget build(BuildContext context) {
    Intl.defaultLocale = 'pt_US';
    // DateTime dateTime = DateTime.parse(date.toString());
    // print(dateTime);
    var formattedDate =
        "${DateFormat.EEEE('en_US').format(date)}, ${DateFormat.MMMM('en_US').format(date)} ${DateFormat.d('en_US').format(date)} ,${DateFormat.y('en_US').format(date)}";
    var formattedTime = DateFormat('hh:mm a').format(date);
    return Container(
      margin: const EdgeInsets.fromLTRB(5, 5, 5, 28),
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadiusDirectional.all(Radius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(alignment: AlignmentDirectional.topEnd, children: [
            Image.network(image),
            IconButton.outlined(
                style: ButtonStyle(
                  fixedSize: const WidgetStatePropertyAll(Size(50, 50)),
                  iconSize: const WidgetStatePropertyAll(30),
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.white),
                ),
                onPressed: () {},
                icon: const Icon(Icons.favorite_border)),
            Positioned(top: 220, child: Text("Free"))
          ]),
          Text(
            name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Fig',
            ),
          ),
          Text(
            description,
            // overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontFamily: 'Fig',
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Wrap(children: [
            const Icon(Icons.location_pin),
            Text(location, style: _textStyle)
          ]),

          Wrap(
              alignment: WrapAlignment.spaceBetween,
              spacing: MediaQuery.of(context).size.width /
                  8, // Minimum gap between items
              runSpacing: 1.0,
              children: [
                Wrap(children: [
                  const Icon(Icons.calendar_month_sharp),
                  Text(
                    formattedDate,
                    style: _textStyle,
                  )
                ]),
                Wrap(children: [
                  const Icon(Icons.lock_clock),
                  Text(
                    formattedTime,
                    style: _textStyle,
                  )
                ]),
              ]),
          const SizedBox(
            height: 15,
          ),
          // const CustomButton()
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => EventDetail(
                      Id: iD,
                    ),
                  ),
                );
              },
              child: Text("See Detail"))
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
