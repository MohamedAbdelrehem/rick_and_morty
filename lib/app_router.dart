import 'package:flutter/material.dart';
import 'package:rick_and_morty/presentation/screens/character_screen.dart';
import 'package:rick_and_morty/presentation/screens/characters_details_screen.dart';

import 'Constants/strings.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case charactersScreen:
        return MaterialPageRoute(builder: (_) => CharactersScreen());
      case characterDetailsScreen:
        return MaterialPageRoute(builder: (_) => CharactersDetailsScreen());
    }
  }
}
