class Player {
  final String name;
  int xp;
  String team;
  int age;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  void sayHello() {
    print('Hi, my name is $name.');
  }
}

void main() {
  var player1 = Player(
    name: 'player1',
    xp: 1500,
    team: 'red',
    age: 12,
  );
  player1.sayHello();
  var player2 = Player(
    name: 'player2',
    xp: 2500,
    team: 'blue',
    age: 12,
  );
  player2.sayHello();
}
