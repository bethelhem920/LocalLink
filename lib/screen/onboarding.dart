import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  Onboarding({super.key});
  String appName = "LocalLink";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(appName),
      ],
    );
  }
}
