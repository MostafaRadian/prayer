import 'package:flutter/material.dart';
import 'package:prayer_time/providers/prayer_provider.dart';
import 'package:prayer_time/widgets/prayer_item.dart';
import 'package:provider/provider.dart';

class PrayerScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.purple),
      body: Consumer<PrayerProvider>(
        builder: (context, value, child) {
          final data = value.prayerTimes?.prayerModel;
          if (data == null) {
            value.requestPrayers();
            return Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) => PrayerItem(
                name: data.keys.elementAt(index),
                time: data.values.elementAt(index),
              ),
            );
          }
        },
      ),
    );
  }
}
