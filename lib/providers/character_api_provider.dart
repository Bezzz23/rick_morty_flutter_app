
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:test_app/models/character_model.dart';
import '../config/api_config.dart';

class CharacterProvider {
  Future<List<Character>> getCharacters() async {
    try {
      Uri url = Uri.parse('$URI_ENDPOINT/character');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final characterJson = jsonDecode(response.body);
        return [
          for(var json in characterJson['results'])
            Character.fromJson(json)
        ];
      }

      return [];
    } catch (e) {
      print(e.toString());
      throw Exception('Error fetching characters');
    }
    
  }
}