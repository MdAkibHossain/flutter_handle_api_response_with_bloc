import 'package:bloc_test_project_3_game/bloc/game_data_bloc.dart';
import 'package:bloc_test_project_3_game/repo/game_repo.dart';
import 'package:bloc_test_project_3_game/screens/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => GameDataBloc(GamesRepo()),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: LandingScreen(),
    );
  }
}
