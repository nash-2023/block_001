import '../../c_data/models/characters.dart';

class CharacterViewModel {
  final Character _char;

  CharacterViewModel({required character}) : _char = character;
  get id => _char.id;
  get adult => _char.adult;
  get name => _char.name;
  get photoUrl => _char.photoUrl;
}
