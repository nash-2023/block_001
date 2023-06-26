// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: depend_on_referenced_packages

import 'dart:math';

import 'package:bloc/bloc.dart';
// import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../c_data/models/characters.dart';
import '../../c_data/repos/repos.dart';
import '../view_model/character_vm.dart';

part 'chrctrs_event.dart';
part 'chrctrs_state.dart';

class ChrctrsBlocVM extends Bloc<ChrctrsEvent, ChrctrsState> {
  final CharactersRepo carRepo;
  ChrctrsBlocVM({required this.carRepo}) : super(ChrctrsInitial()) {
    on<EvenInitial>(_initialLoading);
  }

  _initialLoading(EvenInitial event, Emitter<ChrctrsState> emit) async {
    emit(ChrctrsLoading());
    List<CharacterViewModel> charsListViewModel = [];
    List<Character> modelData = await carRepo.fetchApiData();
    charsListViewModel =
        modelData.map((ch) => CharacterViewModel(character: ch)).toList();
    (Random().nextInt(100) < 70) //70% true
        ? emit(ChrctrsLoaded(characters: charsListViewModel))
        : emit(ChrctrsError(msg: "Error Cant find data"));
  }
}
