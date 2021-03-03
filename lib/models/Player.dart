import 'package:the_battle/models/Team.dart';

class Player {
  final string uuid;
  final string firstname;
  final string name;
  final string email;
  final int sex; // 1 = male / 2 = female

  Team team;

  Player(this.uuid, this.firstname, this.name, this.email, this.sex) {
    if(sex != 1 && sex != 2) {
      throw new Exception('Le sexe du personnage peut être soit male (1) ou femelle (2)');
    }
  }
}