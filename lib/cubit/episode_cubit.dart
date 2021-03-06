import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_morty_flutter_app/models/episode_model.dart';
import 'package:rick_morty_flutter_app/repositories/episode_repository.dart';
import 'package:rick_morty_flutter_app/state/episode_state.dart';

class EpisodeCubit extends Cubit<EpisodeState> {
  final EpisodeRepository episodeRepository;

  EpisodeCubit(this.episodeRepository) : super(EpisodeEmptyState());

  fetchCharacters() async {
    try {
      emit(EpisodeLoadingState());
      List<Episode> episodes = await episodeRepository.getAllEpisodes();
      emit(EpisodeLoadedState(loadedEpisodes: episodes));
    } catch (e) {
      emit(EpisodeErrorState());
    }
  }
}
