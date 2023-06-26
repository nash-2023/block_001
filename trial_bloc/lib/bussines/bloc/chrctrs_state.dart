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
}

class ChrctrsLoading extends ChrctrsState {}

class ChrctrsError extends ChrctrsState {
  final String msg;
  ChrctrsError({
    required this.msg,
  });
}
