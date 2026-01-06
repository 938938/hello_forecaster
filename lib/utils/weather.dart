import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class WeatherService {
  static String get _baseUrl => dotenv.env['WEATHER_API']!;

  static String get _apiKey => dotenv.env['WEATHER_API_KEY']!;

  static Future<String?> getWeatherByCity(String city) async {
    final uri = Uri.parse('$_baseUrl?q=$city&appid=$_apiKey&lang=kr');

    final response = await http.get(uri);

    if (response.statusCode != 200) {
      return null;
    }

    final data = jsonDecode(response.body);
    return data['weather'][0]['description'];
  }
}
