import 'package:http/http.dart' as http;
import 'package:test_app/models/episode_model.dart';
import '../config/api_config.dart';
import 'dart:convert';

class EpisodeProvider {
  Future<List<Episode>> getAllEpisodes() async {
    try {
      Uri url = Uri.parse('$URI_ENDPOINT/episode');
      final response = await http.get(url);
      if (response.statusCode == 200) {
        List<Episode> episodes = [];
        final parsedBody = jsonDecode(response.body);
        parsedBody['results'].forEach((episode) => {
          episodes.add(Episode.fromJson(episode))
        });
        return episodes;
      }
      return [];
    } catch (e) {
      throw Exception('Episode Provider Error')
    }
  }
}
