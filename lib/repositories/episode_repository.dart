import 'package:rick_morty_flutter_app/models/episode_model.dart';
import 'package:rick_morty_flutter_app/providers/episode_api_provider.dart';

class EpisodeRepository {
  EpisodeProvider episodeProvider = EpisodeProvider();

  Future<List<Episode>> getAllEpisodes() async =>
      episodeProvider.getAllEpisodes();
}
