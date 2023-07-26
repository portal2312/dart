enum Team { red, blue }

class Player {
  String name;
  int xp;
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHello() {
    print('Hi, my name is $name.');
  }
}

void main() {
  var player = Player(name: 'A', xp: 1200, team: Team.red)
    ..name = 'AA'
    ..xp = 2000
    ..team = Team.blue
    ..sayHello();
}
