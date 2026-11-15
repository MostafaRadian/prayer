import 'package:dio/dio.dart';
import 'package:prayer_time/models/prayer_model.dart';

class PrayerService {
  static Dio dio = Dio();

  static Future<PrayerModel> getPrayers() async {
    try {
      Response response = await dio.get(
        "https://api.aladhan.com/v1/timingsByCity/15-11-2026?city=Giza&country=Egypt&method=2",
      );

      return PrayerModel.fromJson(response.data);
    } on DioException catch (dioError) {
      throw Exception(dioError.message);
    } catch (otherEception) {
      throw Exception("other Error: ${otherEception.toString()}");
    }
  }
}
