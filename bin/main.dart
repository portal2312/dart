abstract class Human {
  void work();
}

enum Team { red, blue }

class Player extends Human {
  String name;
  int xp;
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  // MUST be defined.
  void work() {
    print('The player is working.');
  }

  void sayHello() {
    print('Hi, my name is $name.');
  }
}

class Coach extends Human {
  // MUST be defined.
  void work() {
    print('The coach is working.');
  }
}

void main() {
  var player = Player(name: 'A', xp: 1200, team: Team.red)
    ..name = 'AA'
    ..xp = 2000
    ..team = Team.blue
    ..sayHello();
}
