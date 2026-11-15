class PrayerModel {
  Map<String, String> prayerModel;

  PrayerModel({required this.prayerModel});

  factory PrayerModel.fromJson(Map<String, dynamic> json) {
    return PrayerModel(prayerModel: json["data"]["timings"]);
  }
}
