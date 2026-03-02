import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:local_event_viewer/Provider/event_provider.dart';
import 'package:local_event_viewer/screen/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  initializeDateFormatting('en_US', null);
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => EventProvider())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: SpalshScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
