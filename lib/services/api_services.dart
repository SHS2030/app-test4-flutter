import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiServices {
  static final ApiServices _singleton = ApiServices._internal();

  factory ApiServices() {
    return _singleton;
  }

  ApiServices._internal();

  Future<dynamic> getData(String url) async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception(
          'Erreur de chargement de données : code ${response.statusCode}. Raison : ${response.reasonPhrase}',
        );
      }
    } catch (e, stackTrace) {
      print(e);
      print(stackTrace);
    }
  }
}
