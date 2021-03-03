import 'package:flutter/material.dart';
import 'package:the_battle/widgets/CharacterMaster.dart';

class AllCharactersPage extends StatefulWidget {
  AllCharactersPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _AllCharactersPage createState() => _AllCharactersPage();
}

class _AllCharactersPage extends State<AllCharactersPage> {
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
        child: CharacterMaster()
      ),
    );
  }
}