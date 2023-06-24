import 'package:flutter/material.dart';
import 'package:trial_bloc/c_data/repos/repos.dart';
// import 'package:trial_bloc/c_data/web_services/fake_web_servics.dart';
import 'a_presentation/screens/character_details.dart';
import 'a_presentation/screens/characters_screen.dart';
import 'bussines/bloc/chrctrs_bloc.dart';
// import 'bussines/cubit/characters_cubit.dart';
import 'c_data/web_services/characters_web_services.dart';
import 'd_constants/strings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  static final CharactersRepo charactersRepos = CharactersWebServices();
  // static final CharactersRepo charactersRepos = FakeWebService();
  // static final CharactersViewModel charactersCubit =
  // CharactersViewModel(carRepo: charactersRepos);
  static final ChrctrsBlocVM charactersBLOC =
      ChrctrsBlocVM(carRepo: charactersRepos);
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MyStrings.homeScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => charactersBLOC,
                  child: const CharactersScreen(),
                ));
      case MyStrings.charDetails:
        return MaterialPageRoute(
            builder: (context) => const CharDetailsScreen());
    }
    return null;
  }
}
