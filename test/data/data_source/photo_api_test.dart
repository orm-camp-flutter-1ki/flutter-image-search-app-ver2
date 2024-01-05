import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;

void main() {
  test('http 결과는 Map으로 잘 들어와야 한다', () async {
    final response = await http.get(Uri.parse(
        'https://pixabay.com/api/?key=10711147-dc41758b93b263957026bdadb&q=yellow+flowers&image_type=photo&pretty=true'));

    Map<String, dynamic> json = jsonDecode(response.body);
    
  });
}