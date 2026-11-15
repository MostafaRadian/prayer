import 'package:flutter/material.dart';
import 'package:prayer_time/providers/prayer_provider.dart';
import 'package:prayer_time/screens/homepage.dart';
import 'package:prayer_time/widgets/prayer_item.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PrayerProvider(),
      child: MaterialApp(
        title: 'Prayer Time',
        theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
        debugShowCheckedModeBanner: false,
        home: PrayerScreen(),
      ),
    );
  }
}
