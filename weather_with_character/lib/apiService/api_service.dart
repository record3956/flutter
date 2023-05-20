import 'package:http/http.dart' as http;

// apikey
const String apiKey = '비밀';
// 사용자가 선택한 지역의 날씨 지역은 서울~
const String endPoint =
    'https://api.openweathermap.org/data/2.5/weather?lat=37.2633325&lon=127.0287472&appid=$apiKey';

class GetWeather {
  final url = Uri.parse(endPoint);

  getTodaysWeather() async {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      print('Hello World');
    } else {
      print('error');
    }
  }
}
