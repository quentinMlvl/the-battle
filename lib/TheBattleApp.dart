import 'package:flutter/material.dart';
import 'package:the_battle/models/Player.dart';
import 'package:the_battle/models/Character.dart';
import 'package:the_battle/pages/AllCharactersPage.dart';

class TheBattleApp extends StatefulWidget {
  const TheBattleApp({Key key}) : super(key: key);

  @override
  _TheBattleAppState createState() => _TheBattleAppState();
}

class _TheBattleAppState extends State<TheBattleApp> {
  final Player _player =
      Player("uuid", "Jean", "Neymar", "Jean.neymar@gmal.com", 1);

  final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'THE BATTLE',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AllCharactersPage(
        title: 'THE BATTLE',
        player: _player,
      ),
    );
  }
}
