// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../c_data/models/characters.dart';
import '../../c_data/repos/repos.dart';
import '../view_model/character_vm.dart';

// part 'characters_state.dart';

/// characters_state.dart --------------------------------Cubit State--------------
@immutable
abstract class CharactersState {}

class CharactersInitial extends CharactersState {}

class CharactersLoaded extends CharactersState {
  final List<CharacterViewModel> characters;
  CharactersLoaded({required this.characters});
}

//---------------------------------------------------------Cubit

class CharactersCubit extends Cubit<CharactersState> {
  final CharactersRepo carRepo;
  CharactersCubit({required this.carRepo}) : super(CharactersInitial());

  List<CharacterViewModel> charsListViewModel = [];

  Future<List<CharacterViewModel>> charsVMFetchApiData() async {
    List<Character> modelData = await carRepo.fetchApiData();
    charsListViewModel =
        modelData.map((ch) => CharacterViewModel(character: ch)).toList();
    emit(CharactersLoaded(characters: charsListViewModel));
    return charsListViewModel;
  }
}
