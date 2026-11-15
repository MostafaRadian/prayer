import 'package:flutter/widgets.dart';
import 'package:prayer_time/models/prayer_model.dart';
import 'package:prayer_time/services/prayer_service.dart';

class PrayerProvider extends ChangeNotifier {
  PrayerModel? prayerTimes;

  Future<void> requestPrayers() async {
    prayerTimes = await PrayerService.getPrayers();
    notifyListeners();
  }
}
