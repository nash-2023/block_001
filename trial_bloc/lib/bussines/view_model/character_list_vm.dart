import 'package:flutter/material.dart';

import '../../c_data/models/characters.dart';
import '../../c_data/repos/repos.dart';
import 'character_vm.dart';

class CharacterListViewModel extends ChangeNotifier {
  final CharactersRepo _repo;
  CharacterListViewModel({required CharactersRepo chrepo}) : _repo = chrepo;
  List<CharacterViewModel> output = [];

  Future<List<CharacterViewModel>> charsVMFetchApiData() async {
    List<Character> modelData = await _repo.fetchApiData();
    output = modelData.map((ch) => CharacterViewModel(character: ch)).toList();
    notifyListeners();
    return output;
  }
}
