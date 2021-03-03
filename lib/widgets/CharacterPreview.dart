import 'package:flutter/material.dart';
import 'package:the_battle/models/Character.dart';

class CharacterPreview extends StatelessWidget {
  const CharacterPreview({Key key, this.character}) : super(key: key);

  final Character character;

  Color _getColor() {
    // if (this.character.autoSelected) {
    //   return Colors.green[800];
    // } else if (this.character.selected &&
    //     this.character.autoSelected == false) {
    //   return Colors.green[600];
    // } else {
    return (false) ? Colors.red[300] : Colors.red[400];
    // }
  }

  // bool _getEnabled(){
  //   return !(this.character.autoSelected ||
  //     this.character.selected);
  // }

  // void _onTap() {
  //   this.onSelected(this.character):
  // }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: _getColor(),
      child: ListTile(
        leading: Image(
          image: AssetImage(character.imagePath()),
          width: 200,
        ),
        title: Text(
          character.name,
          style: TextStyle(
              fontFamily: 'Knewave', fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
