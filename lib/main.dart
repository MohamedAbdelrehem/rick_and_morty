import 'package:flutter/material.dart';
import 'package:rick_and_morty/app_router.dart';

//! we stoped at repository to learn API 

void main() {
  runApp(RickAndMortyApp(appRouter: AppRouter()));
}

class RickAndMortyApp extends StatelessWidget {
  final AppRouter appRouter;

  const RickAndMortyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: appRouter
            .generateRoute // we used the buildin function in the variable that called generateRoute to
        );
  }
}
