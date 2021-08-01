import 'package:rick_morty_flutter_app/models/character_model.dart';
import 'package:rick_morty_flutter_app/providers/character_api_provider.dart';

class CharacterRepository {
  CharacterProvider _characterProvider = CharacterProvider();

  Future<List<Character>> getAllCharacters() =>
      _characterProvider.getCharacters();
}
