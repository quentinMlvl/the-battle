import 'package:flutter/material.dart';
import 'package:the_battle/models/Character.dart';

class CharacterDetails extends StatelessWidget {
  const CharacterDetails({Key key, this.character}) : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red[100],
      child: Row(
        children: [
          Column(
            children: [
              Text(character.name),
              Image(
                image: AssetImage(character.imagePath()),
                width: 50,
              ),
            ],
          ),
          Column(
            children: [
              Row(
                children: [
                  Text(character.strength.kind +
                      " : " +
                      character.strength.value.toString()),
                ],
              ),
              Row(
                children: [
                  Text(character.speed.kind +
                      " : " +
                      character.speed.value.toString()),
                ],
              ),
              Row(
                children: [
                  Text(character.cleverness.kind +
                      " : " +
                      character.cleverness.value.toString()),
                ],
              ),
              Row(
                children: [
                  Text(character.intelligence.kind +
                      " : " +
                      character.intelligence.value.toString()),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
