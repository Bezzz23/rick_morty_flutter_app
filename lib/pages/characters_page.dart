import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/cubit/character_cubit.dart';
import 'package:test_app/state/character_state.dart';
import 'package:test_app/widgets/character_card.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharactersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<CharacterCubit, CharacterState>(
          builder: (context, state) {
        if (state is CharacterEmptyState) {
          return Column(children: [
            Text('Is Empty'),
            CupertinoButton(
                onPressed: () =>
                    context.read<CharacterCubit>().fetchCharacters(),
                child: Text('Load data'))
          ]);
        }

        if (state is CharacterLoadingState) {
          return Center(child: CircularProgressIndicator());
        }

        if (state is CharacterLoadedState) {
          return ListView.builder(
              itemCount: state.loadedCharacters.length,
              itemBuilder: (context, index) => CharacterCard(
                    name: state.loadedCharacters[index].name,
                    location: state.loadedCharacters[index].location,
                    imageUrl: state.loadedCharacters[index].imageUrl,
                  ));
        }

        if (state is CharacterErrorState) {
          return Center(
            child: Text(
              'Error fetching characters',
              style: TextStyle(fontSize: 20.0),
            ),
          );
        }

        return Text('SomethingWrong');
      }),
    );
  }
}
