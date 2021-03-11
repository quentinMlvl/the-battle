import 'package:flutter/material.dart';
import 'package:the_battle/models/Character.dart';
import 'package:the_battle/models/Player.dart';
import 'package:the_battle/pages/TeamPage.dart';
import 'package:the_battle/widgets/CharacterMaster.dart';
import 'package:the_battle/widgets/CharacterDetails.dart';
import 'package:the_battle/data/characters.dart';

class AllCharactersPage extends StatefulWidget {
  AllCharactersPage({Key key, this.title, this.player}) : super(key: key);

  final String title;
  final Player player;

  @override
  _AllCharactersPageState createState() => _AllCharactersPageState();
}

class _AllCharactersPageState extends State<AllCharactersPage> {
  List<Character> _characters = characters;
  Character _selectedCharacter;

  void _onCharacterSelect(Character character) {
    setState(() {
      _selectedCharacter = character;
    });
  }

  void _onCharacterAdded(Character character) {
    if (widget.player.team.indexOf(character) != 1) {
      print('Déjà dans la team');
    } else {
      // Navigator.pushReplacementNamed(context, TeamPage.routeName,
      //     arguments: character);
    }
  }

  Widget _getCharacterDetails() {
    if (_selectedCharacter != null) {
      return CharacterDetails(
        character: _selectedCharacter,
        player: widget.player,
        onCharacterAdded: _onCharacterAdded,
      );
    } else
      return Container();
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
                characters: _characters, onSelected: _onCharacterSelect),
          ),
        ],
      )),
    );
  }
}
