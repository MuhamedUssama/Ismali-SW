import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:islami_app/features/home/tabs/radio_tab/models/radio/radio_response_model.dart';
import 'package:islami_app/features/home/tabs/radio_tab/models/reciters/reciters_response_model.dart';

class RadioApiManager {
  static const String _baseUrl = "mp3quran.net";

  static Future<RadioResponse> getRadios({String language = 'ar'}) async {
    Uri uri = Uri.https(_baseUrl, '/api/v3/radios', {'language': language});
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      RadioResponse radioResponse = RadioResponse.fromJson(json);
      return radioResponse;
    } else {
      throw Exception("Somthing went worng");
    }
  }

  static Future<RecitersResponse> getReciters({String language = 'ar'}) async {
    Uri uri = Uri.https(_baseUrl, '/api/v3/reciters', {'language': language});
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      var json = jsonDecode(response.body);
      RecitersResponse recitersResponse = RecitersResponse.fromJson(json);
      return recitersResponse;
    } else {
      throw Exception("Somthing went worng");
    }
  }
}
