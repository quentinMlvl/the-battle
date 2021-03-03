import 'package:flutter/material.dart';
import 'package:the_battle/models/Character.dart';
import 'package:the_battle/data/characters.dart';

class CharacterMaster extends StatelessWidget {
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