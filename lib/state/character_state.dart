abstract class CharacterState {}

class CharacterEmptyState extends CharacterState {}

class CharacterLoadingState extends CharacterState {}

class CharacterLoadedState extends CharacterState {
  List<dynamic> loadedCharacters;

  CharacterLoadedState({required this.loadedCharacters})
      : assert(loadedCharacters != null);
}

class CharacterErrorState extends CharacterState {}
