import 'package:flutter/material.dart';
import 'package:the_battle/models/Character.dart';
import 'package:the_battle/models/Player.dart';
import 'package:the_battle/models/Team.dart';
import 'package:the_battle/pages/AllCharactersPage.dart';
import 'package:the_battle/widgets/MyNavigatorBar.dart';
import 'package:the_battle/widgets/TeamCharacterDetail.dart';

class TeamPage extends StatefulWidget {
  TeamPage({Key key, this.player}) : super(key: key);

  static const String routeName = "/team";
  final Player player;

  @override
  _TeamPageState createState() => _TeamPageState();
}

class _TeamPageState extends State<TeamPage> {
  _TeamPageState();
  static const int routeIndex = 1;

  void _onIndexChange(int index) {
    Navigator.pushNamed(
      context,
      AllCharactersPage.routeName,
    );
  }

  @override
  Widget build(BuildContext context) {
    try {
      final Character character = ModalRoute.of(context).settings.arguments;

      if (character != null) {
        if (this.widget.player.team.add(character)) {
          setState(() {
            character.selected = true;
          });
        }
      }
    } catch (e) {
      print(e);
    }

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'My Team',
            style: TextStyle(fontFamily: 'Knewave', fontSize: 50),
          ),
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: ListView.builder(
              itemCount: widget.player.team.characters.length,
              itemBuilder: (BuildContext context, int index) {
                final Character character =
                    widget.player.team.characters[index];

                return TeamCharacterDetail(
                  character: character,
                );
              },
            ),
          ),
        ),
        bottomNavigationBar: MyNavigatorBar(
          selectedIndex: routeIndex,
          onIndexChange: _onIndexChange,
        ));
  }
}
