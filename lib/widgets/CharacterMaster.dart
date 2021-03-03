import 'package:flutter/material.dart';
import 'package:the_battle/models/Character.dart';
import 'package:the_battle/widgets/CharacterPreview.dart';
import 'package:the_battle/data/characters.dart';

class CharacterMaster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: characters.length,
        itemBuilder: (BuildContext context, int index) {
          final Character character = characters[index];

          return CharacterPreview(character: character);
        },
      ),
    );
  }
}

/*class _CharacterMaster extends State<CharacterMaster> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for(var i in characters) Text(i.name)
            ]),
      ),
    );
  }
}*/
