import 'dart:convert';

import 'package:http/http.dart' as http;

class PhotoApi {
  Future<Map<String, dynamic>> getPhotoInfoJson(String query) async {
    final response = await http.get(Uri.parse(
        'https://pixabay.com/api/?key=10711147-dc41758b93b263957026bdadb&q=$query&image_type=photo'));

    return jsonDecode(response.body);
  }
}
