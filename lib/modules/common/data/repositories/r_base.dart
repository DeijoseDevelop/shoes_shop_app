// import "package:flutter_dotenv/flutter_dotenv.dart";
import "package:http/http.dart" as http;

class BaseRepository {
  // final String baseUrl = dotenv.get("baseURL");
  // final String baseURLBancolombia = dotenv.get("baseURLBancolombia");
  // final String baseUrlTranscaribe = dotenv.get("baseUrlTranscaribe");

  Future<http.Response> get(String url) async {
    return http.get(Uri.parse(url));
  }

  Future<http.Response> post(String url, Map<String, dynamic> body) async {
    return http.post(Uri.parse(url), body: body);
  }

  Future<http.Response> put(String url, Map<String, dynamic> body) async {
    return http.put(Uri.parse(url), body: body);
  }

  Future<http.Response> delete(String url) async {
    return http.delete(Uri.parse(url));
  }
}
