import 'package:rick_morty_flutter_app/models/episode_model.dart';

abstract class EpisodeState {}

class EpisodeEmptyState extends EpisodeState {}

class EpisodeLoadingState extends EpisodeState {}

class EpisodeLoadedState extends EpisodeState {
  List<Episode> loadedEpisodes;

  EpisodeLoadedState({required this.loadedEpisodes})
      : assert(loadedEpisodes != null);
}

class EpisodeErrorState extends EpisodeState {}
