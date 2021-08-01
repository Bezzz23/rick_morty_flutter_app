import 'package:test_app/models/episode_model.dart';
import 'package:test_app/providers/episode_api_provider.dart';

class EpisodeRepository {
  EpisodeProvider episodeProvider = EpisodeProvider();

  Future<List<Episode>> getAllEpisodes() async =>
      episodeProvider.getAllEpisodes();
}
