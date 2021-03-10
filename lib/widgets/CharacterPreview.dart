import 'package:flutter/material.dart';
import 'package:the_battle/models/Character.dart';

class CharacterPreview extends StatefulWidget {
  const CharacterPreview({Key key, this.character}) : super(key: key);

  final Character character;

  @override
  _CharacterPreviewState createState() => _CharacterPreviewState();
}

class _CharacterPreviewState extends State<CharacterPreview> {
  _CharacterPreviewState();
  bool _selected = false;

  Color _getColor() {
    // if (this.character.autoSelected) {
    //   return Colors.green[800];
    // } else if (this.character.selected &&
    //     this.character.autoSelected == false) {
    //   return Colors.green[600];
    // } else {
    return (_selected) ? Colors.green[300] : Colors.red[400];
    // }
  }

  // bool _getEnabled(){
  //   return !(this.widget.character.autoSelected ||
  //     this.widget.character.selected);
  // }

  void _onTap() {
    setState(() {
      _selected = !_selected;
    });
  }

  Widget build(BuildContext context) {
    return Card(
      color: _getColor(),
      child: ListTile(
        onTap: () {
          _onTap();
        },
        leading: Image(
          image: AssetImage(widget.character.imagePath()),
          width: 200,
        ),
        title: Text(
          widget.character.name,
          style: TextStyle(
              fontFamily: 'Knewave', fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
