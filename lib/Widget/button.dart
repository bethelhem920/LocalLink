import 'package:flutter/material.dart';
import 'package:local_event_viewer/screen/detail_page.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) => EventDetail(),
          //   ),
          // );
        },
        child: Text("See Detail"));
  }
}
