import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_morty_flutter_app/models/character_model.dart';
import 'package:rick_morty_flutter_app/repositories/character_repository.dart';
import 'package:rick_morty_flutter_app/state/character_state.dart';

class CharacterCubit extends Cubit<CharacterState> {
  final CharacterRepository characterRepository;

  CharacterCubit(this.characterRepository) : super(CharacterEmptyState());

  void fetchCharacters() async {
    try {
      emit(CharacterLoadingState());
      final List<Character> _loadedCharacters =
          await characterRepository.getAllCharacters();
      emit(CharacterLoadedState(loadedCharacters: _loadedCharacters));
    } catch (e) {
      emit(CharacterErrorState());
    }
  }
}
