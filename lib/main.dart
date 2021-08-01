import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rick_morty_flutter_app/pages/main_page.dart';
import 'package:rick_morty_flutter_app/repositories/character_repository.dart';
import 'package:rick_morty_flutter_app/cubit/character_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

main() {
  final CharacterRepository characterRepository = CharacterRepository();

  runApp(CupertinoApp(
    home: BlocProvider<CharacterCubit>(
        create: (context) => CharacterCubit(characterRepository),
        child: MainPage()),
    theme: CupertinoThemeData(scaffoldBackgroundColor: Colors.grey[900]),
    routes: {},
  ));
}
