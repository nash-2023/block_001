// ignore_for_file: public_member_api_docs, sort_constructors_first, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../c_data/repos/repos.dart';
import '../../c_data/models/characters.dart';
import '../view_model/character_vm.dart';

// part 'characters_state.dart';

//---------------------------------------------------------Cubit

class CharactersViewModel extends Cubit<CharactersState> {
  final CharactersRepo carRepo;
  CharactersViewModel({required this.carRepo}) : super(CharactersInitial());

  Future<List<CharacterViewModel>> charsVMFetchApiData() async {
    List<CharacterViewModel> charsListViewModel = [];
    List<Character> modelData = await carRepo.fetchApiData();
    charsListViewModel =
        modelData.map((ch) => CharacterViewModel(character: ch)).toList();
    emit(CharactersLoaded(characters: charsListViewModel));
    return charsListViewModel;
  }
/*
better be in Observer class ::: MyBlocObserver
  @override
  void onChange(Change<CharactersState> change) {
    super.onChange(change);
    print(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    print('$error, $stackTrace');
    super.onError(error, stackTrace);
  }
  */
}

//// OBserver ------------------------------------------------------------
class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    print('onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('onChange -- ${bloc.runtimeType}, $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print('onError -- ${bloc.runtimeType}, $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    print('onClose -- ${bloc.runtimeType}');
  }
}

/// characters_state.dart --------------------------------Cubit State-----------
@immutable
abstract class CharactersState {}

class CharactersInitial extends CharactersState {}

class CharactersLoaded extends CharactersState {
  final List<CharacterViewModel> characters;
  CharactersLoaded({required this.characters});
}


//----------------------------------------------stful
/*
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
*/