class Player {
  String name;
  int xp;
  String team;

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
  var player = Player(name: 'A', xp: 1200, team: 'red')
    ..name = 'AA'
    ..xp = 2000
    ..team = 'blue'
    ..sayHello();
}
