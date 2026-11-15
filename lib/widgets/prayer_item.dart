import 'package:flutter/material.dart';

class PrayerItem extends StatelessWidget {
  final String name;
  final String time;
  const new({required this.name, required this.time, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.mosque_rounded),
      title: Text(name),
      trailing: Text(time),
    );
  }
}
