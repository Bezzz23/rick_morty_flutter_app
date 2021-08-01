import 'package:test_app/models/character_model.dart';
import 'package:test_app/providers/character_api_provider.dart';

class CharacterRepository {
  CharacterProvider _characterProvider = CharacterProvider();

  Future<List<Character>> getAllCharacters() => _characterProvider.getCharacters();
}