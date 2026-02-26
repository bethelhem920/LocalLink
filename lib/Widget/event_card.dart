//a custom widget to display event
import 'package:flutter/material.dart';

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
  final date;
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
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadiusDirectional.all(Radius.circular(7))),
      child: Column(
        children: [
          Image.network(image),
          Row(
            children: [
              Flexible(
                child: Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(location),
            ],
          ),
          Row(
            children: [
              Flexible(
                  child: Text(
                description,
                overflow: TextOverflow.ellipsis,
              )),
              Text(date)
            ],
          )
        ],
      ),
    );
  }
}
