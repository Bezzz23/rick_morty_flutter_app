import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/pages/characters_page.dart';
import 'package:test_app/pages/episodes_page.dart';
import 'package:test_app/repositories/character_repository.dart';

class MainPage extends StatelessWidget {
  final CharacterRepository characterRepository = CharacterRepository();

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Characters'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.place),
              title: Text('Locations'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie),
              title: Text('Episodes'),
            ),
          ],
        ),
        tabBuilder: (context, index) {
          if (index == 0) {
            return CharactersPage();
          }
          if (index == 1) {
            return EpisodesPage();
          }
          return Text('no');
        });
  }
}
