import 'package:flutter/material.dart';
import 'package:the_battle/pages/AllCharactersPage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'THE BATTLE',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AllCharactersPage(title: 'THE BATTLE'),
    );
  }
}
