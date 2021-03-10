import 'package:flutter/material.dart';
import 'package:the_battle/models/Character.dart';
import 'package:the_battle/widgets/CharacterMaster.dart';
import 'package:the_battle/widgets/CharacterDetails.dart';
import 'package:the_battle/data/characters.dart';

class AllCharactersPage extends StatefulWidget {
  AllCharactersPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AllCharactersPage createState() => _AllCharactersPage();
}

class _AllCharactersPage extends State<AllCharactersPage> {
  List<Character> _characters = characters;
  Character _selectedCharacter;

  void _onCharacterSelect(Character character) {
    setState() {
      this._selectedCharacter = character;
    }
  }

  Widget _getCharacterDetails() {
    // if (this._selectedCharacter != null) {
    return CharacterDetails(
      character: this._characters[0],
    );
    // } else
    //   return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(fontFamily: 'Knewave', fontSize: 50),
        ),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: _getCharacterDetails(),
          ),
          Expanded(
            child: CharacterMaster(
                characters: _characters, onSelected: this._onCharacterSelect),
          ),
        ],
      )),
    );
  }
}
