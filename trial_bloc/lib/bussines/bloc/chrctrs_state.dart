// ignore_for_file: public_member_api_docs, sort_constructors_first

part of 'chrctrs_bloc.dart';

@immutable
abstract class ChrctrsState {}

class ChrctrsInitial extends ChrctrsState {}

class ChrctrsLoaded extends ChrctrsState {
  final List<CharacterViewModel> characters;
  ChrctrsLoaded({
    required this.characters,
  });

  @override
  bool operator ==(covariant ChrctrsLoaded other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return listEquals(other.characters, characters);
  }

  @override
  int get hashCode => characters.hashCode;
}
