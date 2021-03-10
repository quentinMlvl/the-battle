import 'package:flutter/material.dart';
import 'package:the_battle/models/Character.dart';
import 'package:the_battle/widgets/CharacterPreview.dart';
// import 'package:the_battle/data/characters.dart';

class CharacterMaster extends StatelessWidget {
  const CharacterMaster({Key key, this.characters, this.onSelected})
      : super(key: key);

  final List<Character> characters;
  final void onSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: characters.length,
        itemBuilder: (BuildContext context, int index) {
          final Character character = characters[index];

          return CharacterPreview(character: character);
        },
      ),
    );
  }
}
