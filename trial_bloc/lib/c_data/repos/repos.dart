import '../models/characters.dart';

abstract class CharactersRepo {
  Future<List<Character>> fetchApiData();
}
