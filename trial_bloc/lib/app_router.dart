import 'package:flutter/material.dart';
import 'package:trial_bloc/c_data/repos/repos.dart';
import 'a_presentation/screens/character_details.dart';
import 'a_presentation/screens/characters_screen.dart';
import 'bussines/cubit/characters_cubit.dart';
import 'c_data/web_services/characters_web_services.dart';
import 'd_constants/strings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static final CharactersRepo _charactersRepos = CharactersWebServices();
  // static final CharactersCubit _charactersCubit = CharactersCubit(carRepo: _charactersRepos);
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) =>
                      CharactersCubit(carRepo: _charactersRepos),
                  child: const CharactersScreen(),
                ));
      case charDetails:
        return MaterialPageRoute(
            builder: (context) => const CharDetailsScreen());
    }
    return null;
  }
}
