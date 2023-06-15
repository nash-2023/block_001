import 'package:flutter/material.dart';
import 'a_presentation/screens/character_details.dart';
import 'a_presentation/screens/characters_screen.dart';
import 'd_constants/strings.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeScreen:
        return MaterialPageRoute(
            builder: (context) => const CharactersScreen());
      case charDetails:
        return MaterialPageRoute(
            builder: (context) => const CharDetailsScreen());
    }
    return null;
  }
}
